#!/usr/bin/env python3
"""
Move <meta charset="UTF-8"> to be the first tag inside <head> in all HTML files.
This ensures browsers find the charset declaration within the first 1024 bytes,
before the Facebook Pixel / GTM scripts push it past the scan window.
"""
import os
import re
import glob

base = os.path.dirname(os.path.abspath(__file__))
html_files = glob.glob(os.path.join(base, '**/*.html'), recursive=True)
html_files += glob.glob(os.path.join(base, '*.html'))
html_files = list(set(html_files))

CHARSET_VARIANTS = [
    '<meta charset="UTF-8" />',
    '<meta charset="UTF-8"/>',
    '<meta charset="UTF-8">',
    "<meta charset='UTF-8' />",
    "<meta charset='UTF-8'>",
]

fixed = 0
skipped = 0

for path in sorted(html_files):
    data = open(path, 'rb').read()
    text = data.decode('utf-8', errors='replace')

    # Find which charset variant is used
    charset_tag = None
    for v in CHARSET_VARIANTS:
        if v in text:
            charset_tag = v
            break

    if charset_tag is None:
        print(f'  NO CHARSET TAG: {os.path.relpath(path, base)}')
        skipped += 1
        continue

    # Find byte position of charset tag
    charset_idx = data.find(charset_tag.encode('utf-8'))
    if charset_idx != -1 and charset_idx <= 512:
        print(f'  OK (already at byte {charset_idx}): {os.path.relpath(path, base)}')
        skipped += 1
        continue

    # Remove the charset tag (and any surrounding whitespace/newline)
    # Match the tag with optional leading whitespace and trailing newline
    text_new = re.sub(
        r'[ \t]*' + re.escape(charset_tag) + r'[ \t]*\r?\n?',
        '',
        text,
        count=1
    )

    # Insert right after <head> (with or without attributes)
    # Use a consistent tag
    insert_tag = '<meta charset="UTF-8" />\n'
    text_new = re.sub(
        r'(<head[^>]*>)',
        r'\1\n' + insert_tag,
        text_new,
        count=1
    )

    # Verify the charset is now early
    new_bytes = text_new.encode('utf-8')
    new_pos = new_bytes.find(b'charset')

    open(path, 'wb').write(new_bytes)
    print(f'  FIXED (charset now at byte {new_pos}): {os.path.relpath(path, base)}')
    fixed += 1

print(f'\nDone: {fixed} fixed, {skipped} skipped.')
