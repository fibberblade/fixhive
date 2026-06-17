"""
Restore the 25 double-encoded mojibake HTML files from clean git commit be469a0.
For files that didn't exist in be469a0, try aafd4fc.
After restoring, move charset to byte 46 (first inside <head>).
"""
import subprocess, os, re

BASE = os.path.dirname(os.path.abspath(__file__))
CLEAN_COMMIT = 'be469a0'
FALLBACK_COMMIT = 'aafd4fc'

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
    'blogs.html',
]

CHARSET_VARIANTS = [
    b'<meta charset="UTF-8" />',
    b'<meta charset="UTF-8"/>',
    b'<meta charset="UTF-8">',
]

def fix_charset(data):
    # Find and remove existing charset tag
    for v in CHARSET_VARIANTS:
        if v in data:
            data = data.replace(b'\r\n' + v, b'', 1)
            data = data.replace(b'\n' + v, b'', 1)
            data = data.replace(v + b'\r\n', b'', 1)
            data = data.replace(v + b'\n', b'', 1)
            data = data.replace(v, b'', 1)
            break
    # Insert right after <head>
    head_pos = data.find(b'<head>')
    if head_pos == -1:
        head_pos = data.find(b'<head\n')
        if head_pos == -1:
            head_pos = data.find(b'<head ')
    if head_pos >= 0:
        end_of_head = data.find(b'>', head_pos) + 1
        data = data[:end_of_head] + b'\n<meta charset="UTF-8" />\n' + data[end_of_head:]
    return data

fixed = 0
skipped = 0

for rel in BAD_FILES:
    rel_fwd = rel.replace('\\', '/')
    dest = os.path.join(BASE, rel.replace('/', os.sep))

    # Try clean commit first
    result = subprocess.run(['git', 'show', f'{CLEAN_COMMIT}:{rel_fwd}'], capture_output=True, cwd=BASE)
    if result.returncode != 0 or not result.stdout:
        result = subprocess.run(['git', 'show', f'{FALLBACK_COMMIT}:{rel_fwd}'], capture_output=True, cwd=BASE)
    if result.returncode != 0 or not result.stdout:
        print(f'  SKIP (not in git): {rel}')
        skipped += 1
        continue

    data = result.stdout  # raw bytes from git — always correct UTF-8

    # Verify no BOM
    if data[:3] == b'\xef\xbb\xbf':
        data = data[3:]

    # Move charset to top of <head>
    data = fix_charset(data)

    # Verify clean
    moji = b'\xc3\xa2\xe2\x82\xac'
    charset_pos = data.find(b'charset')
    if moji in data:
        print(f'  WARNING still has mojibake after restore: {rel}')
    else:
        os.makedirs(os.path.dirname(dest), exist_ok=True)
        open(dest, 'wb').write(data)
        print(f'  FIXED (charset@{charset_pos}): {rel}')
        fixed += 1

print(f'\nDone: {fixed} restored, {skipped} skipped.')
