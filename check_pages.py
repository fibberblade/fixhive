import re

for fname in ['faq.html', 'blogs.html']:
    data = open(fname, 'rb').read()
    text = data.decode('utf-8')

    # Look for any non-ASCII that appears to be mojibake (single-layer)
    # e.g. the characters â € " appearing together is a sign
    patterns = ['\xe2\x80\x9c', '\xe2\x80\x9d', '\xe2\x80\x94', '\xe2\x80\x99']
    for p in patterns:
        if p in text:
            idx = text.find(p)
            print(f'{fname}: found mojibake-like string at char {idx}: {repr(text[max(0,idx-20):idx+30])}')
            break
    else:
        # Check for raw garbled chars
        garbled = [c for c in text if ord(c) in range(0xC0, 0xD0)]
        if garbled:
            print(f'{fname}: suspicious chars: {garbled[:10]}')
        else:
            print(f'{fname}: CLEAN - no mojibake found')

    # Show first blog/FAQ title
    h_match = re.search(r'<h[12][^>]*>(.*?)</h[12]>', text)
    if h_match:
        print(f'  First heading: {h_match.group(1)[:100]}')
    print()
