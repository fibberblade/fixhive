import os, glob

mojibake_patterns = [
    (b'\xc3\xa2\xe2\x82\xac\xe2\x80\x94', 'em-dash double-encoded'),
    (b'\xc3\xa2\xe2\x82\xac\xe2\x80\x9c', 'left-quote double-encoded'),
    (b'\xc3\xa2\xe2\x82\xac\xe2\x80\x9d', 'right-quote double-encoded'),
    (b'\xc3\xa2\xe2\x82\xac\xe2\x80\x98', 'apostrophe double-encoded'),
    (b'\xc3\xb0\xc5\xb8', 'emoji double-encoded prefix'),
]

base = os.path.dirname(os.path.abspath(__file__))
files = sorted(glob.glob(os.path.join(base, '**/*.html'), recursive=True) + glob.glob(os.path.join(base, '*.html')))
files = list(set(files))

bad = []
for f in files:
    data = open(f, 'rb').read()
    for pat, name in mojibake_patterns:
        if pat in data:
            bad.append((os.path.relpath(f, base), name))
            break

print(f'Files with double-encoded mojibake: {len(bad)}')
for f, desc in sorted(bad):
    print(f'  {f}: {desc}')
