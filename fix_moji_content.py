"""
Fix double-encoded mojibake in blog HTML files.

These files contain text where UTF-8 bytes were misread as Windows-1252,
then re-saved as UTF-8, double-encoding the characters.

Fix: build a byte-substitution table that maps each Windows-1252 high byte
to its UTF-8 encoding, then scan files for double-encoded multi-byte sequences
and replace them with the original UTF-8 bytes.
"""
import os, re, glob

BASE = os.path.dirname(os.path.abspath(__file__))

# Build lookup: original_byte (0x80-0xFF) -> its UTF-8 encoding when viewed as Win-1252
# For bytes undefined in cp1252 (0x81, 0x8D, 0x8F, 0x90, 0x9D), fall back to
# their latin-1/ISO-8859-1 interpretation (control chars that encode as C2 XX in UTF-8)
byte_to_win1252_utf8 = {}
for b in range(0x80, 0x100):
    try:
        char = bytes([b]).decode('cp1252')
        byte_to_win1252_utf8[b] = char.encode('utf-8')
    except Exception:
        # Undefined in cp1252 — use latin-1 fallback (U+00XX -> UTF-8 C2 XX)
        char = bytes([b]).decode('latin-1')
        byte_to_win1252_utf8[b] = char.encode('utf-8')

# Build reverse: double-encoded UTF-8 bytes -> original bytes
# For every valid 3-byte UTF-8 sequence, compute its double-encoded form
double_to_original = {}
for b1 in range(0xE0, 0xF0):       # 3-byte UTF-8 lead byte
    for b2 in range(0x80, 0xC0):    # continuation
        for b3 in range(0x80, 0xC0):
            original = bytes([b1, b2, b3])
            try:
                original.decode('utf-8')  # verify valid
            except UnicodeDecodeError:
                continue
            double = byte_to_win1252_utf8[b1] + byte_to_win1252_utf8[b2] + byte_to_win1252_utf8[b3]
            double_to_original[double] = original

# Also handle 2-byte UTF-8 sequences (U+0080 to U+07FF)
for b1 in range(0xC2, 0xE0):
    for b2 in range(0x80, 0xC0):
        original = bytes([b1, b2])
        try:
            original.decode('utf-8')
        except UnicodeDecodeError:
            continue
        double = byte_to_win1252_utf8[b1] + byte_to_win1252_utf8[b2]
        double_to_original[double] = original

# Also handle 4-byte UTF-8 sequences (emoji, U+10000+)
for b1 in range(0xF0, 0xF5):
    for b2 in range(0x80, 0xC0):
        for b3 in range(0x80, 0xC0):
            for b4 in range(0x80, 0xC0):
                original = bytes([b1, b2, b3, b4])
                try:
                    original.decode('utf-8')
                except UnicodeDecodeError:
                    continue
                double = (byte_to_win1252_utf8[b1] + byte_to_win1252_utf8[b2] +
                          byte_to_win1252_utf8[b3] + byte_to_win1252_utf8[b4])
                double_to_original[double] = original

# Sort by length descending so longer patterns match first
patterns = sorted(double_to_original.items(), key=lambda x: -len(x[0]))
print(f'Built {len(patterns)} double-encoding replacement patterns')

def fix_bytes(data):
    # Replace double-encoded sequences with original UTF-8 bytes
    for double, original in patterns:
        if double in data:
            data = data.replace(double, original)
    return data

def fix_charset(data):
    charset_variants = [
        b'<meta charset="UTF-8" />',
        b'<meta charset="UTF-8"/>',
        b'<meta charset="UTF-8">',
    ]
    for v in charset_variants:
        if v in data:
            for nl in [b'\r\n' + v, b'\n' + v, v + b'\r\n', v + b'\n']:
                data = data.replace(nl, b'', 1)
            data = data.replace(v, b'', 1)
            break
    head_match = re.search(b'<head[^>]*>', data)
    if head_match:
        pos = head_match.end()
        data = data[:pos] + b'\n<meta charset="UTF-8" />\n' + data[pos:]
    return data

BAD_FILES = [
    'blog/4wd-offroad-dubai.html',
    'blog/audi-a6-service-dubai.html',
    'blog/audi-q7-common-problems-dubai.html',
    'blog/bmw-3-series-problems-dubai.html',
    'blog/bmw-5-series-problems-dubai.html',
    'blog/car-ac-smell-dubai.html',
    'blog/car-not-used-dubai.html',
    'blog/clutch-replacement-dubai.html',
    'blog/ferrari-service-cost-dubai.html',
    'blog/jeep-wrangler-service-guide-uae.html',
    'blog/lamborghini-maintenance-cost-uae.html',
    'blog/land-rover-defender-reliability-uae.html',
    'blog/mercedes-c-class-service-dubai.html',
    'blog/mercedes-gle-problems-dubai.html',
    'blog/nissan-patrol-gearbox-dubai.html',
    'blog/obd-fault-codes-dubai.html',
    'blog/porsche-macan-service-dubai.html',
    'blog/range-rover-sport-reliability-uae.html',
    'blog/rolls-royce-service-dubai.html',
    'blog/spark-plugs-uae-heat.html',
    'blog/summer-car-prep-dubai-2026.html',
    'blog/timing-belt-vs-chain-dubai.html',
    'blog/toyota-prado-vs-land-cruiser-uae.html',
    'blog/tyre-rotation-dubai.html',
]

moji_check = b'\xc3\xa2\xe2\x82\xac'
fixed = 0

for rel in BAD_FILES:
    path = os.path.join(BASE, rel.replace('/', os.sep))
    if not os.path.exists(path):
        print(f'  MISSING: {rel}')
        continue

    original_data = open(path, 'rb').read()
    if original_data[:3] == b'\xef\xbb\xbf':
        original_data = original_data[3:]

    fixed_data = fix_bytes(original_data)
    fixed_data = fix_charset(fixed_data)

    charset_pos = fixed_data.find(b'charset')
    still_moji = moji_check in fixed_data

    if still_moji:
        # Count remaining instances
        count = fixed_data.count(moji_check)
        print(f'  PARTIAL ({count} moji remain, charset@{charset_pos}): {rel}')
    else:
        print(f'  FIXED (charset@{charset_pos}): {rel}')

    open(path, 'wb').write(fixed_data)
    fixed += 1

print(f'\nDone: processed {fixed} files.')
