import re, os, sys

DIR = r"C:\Users\gianl\OneDrive\Desktop\AI\fixhive"
audi = open(f"{DIR}/audi-repair-dubai.html", encoding="utf-8").read()
nav  = re.search(r'(?s)<nav>.*?</nav>', audi).group()
mob  = re.search(r'(?s)<div class="mobile-menu".*?</div>(?=\s*<section class="page-hero")', audi).group()
foot = re.search(r'(?s)<footer>.*?</footer>', audi).group()

CSS = """
    .page-content{padding:60px 5%;max-width:1100px;margin:0 auto}
    .brand-hero-logo{display:flex;align-items:center;gap:1.5rem;margin-bottom:1.5rem}
    .brand-hero-logo img{width:80px;height:80px;object-fit:contain;background:#fff;border-radius:12px;padding:.8rem;box-shadow:0 2px 12px rgba(0,0,0,.1)}
    .intro-text{font-size:1rem;line-height:1.8;color:#374151;max-width:820px;margin-bottom:2.5rem}
    .issues-grid{display:grid;grid-template-columns:1fr 1fr;gap:1.5rem;margin:2rem 0 3rem}
    .issue-item{background:#fff8f0;border:1.5px solid #fde68a;border-radius:10px;padding:1.4rem}
    .issue-item h3{font-size:.97rem;font-weight:700;color:#92400e;margin-bottom:.5rem}
    .issue-item p{font-size:.88rem;color:#374151;line-height:1.65;margin:0}
    .faq-section{padding:60px 5%;background:#f8faff}
    .faq-list{max-width:820px;margin:2rem auto 0;display:flex;flex-direction:column;gap:.6rem}
    .faq-item{background:#fff;border:1.5px solid #e5e7eb;border-radius:10px;overflow:hidden}
    .faq-q{width:100%;text-align:left;padding:1rem 1.2rem;background:none;border:none;font-size:.95rem;font-weight:600;color:#1e3a8a;cursor:pointer;display:flex;justify-content:space-between;align-items:center;gap:1rem;font-family:inherit}
    .faq-q::after{content:'+';font-size:1.3rem;font-weight:400;color:#1d4ed8;flex-shrink:0;transition:transform .2s}
    .faq-item.open .faq-q::after{transform:rotate(45deg)}
    .faq-a{max-height:0;overflow:hidden;transition:max-height .3s ease,padding .3s;padding:0 1.2rem}
    .faq-a p{padding:0 0 1rem;color:#374151;font-size:.9rem;line-height:1.7;margin:0}
    .faq-item.open .faq-a{max-height:300px}
    .page-cta{background:linear-gradient(135deg,#0a2463,#1d4ed8);padding:50px 5%;text-align:center;color:#fff}
    .page-cta h2{font-size:clamp(1.4rem,3vw,2rem);margin-bottom:.8rem}
    .page-cta p{color:rgba(255,255,255,.8);margin-bottom:1.8rem}
    .brand-svc-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:.75rem;margin:1.5rem 0 1.2rem}
    .brand-svc-tile{display:flex;flex-direction:row;align-items:center;gap:.6rem;padding:.7rem .9rem;background:#f8faff;border:1.5px solid #e0e7ff;border-radius:10px;text-decoration:none;color:#1e3a8a;font-size:.87rem;font-weight:700;line-height:1.3;transition:border-color .2s,background .2s,box-shadow .2s,transform .15s}
    .brand-svc-tile:hover{border-color:var(--amber);background:#fff;box-shadow:0 4px 18px rgba(10,36,99,.1);transform:translateY(-2px)}
    .svc-tile-icon{font-size:1.25rem;flex-shrink:0}
    .svc-tile-note{font-size:.88rem;color:#6b7280;font-style:italic;margin:.6rem 0 2.5rem;line-height:1.65}
    @media(max-width:700px){.issues-grid{grid-template-columns:1fr}.brand-svc-grid{grid-template-columns:repeat(2,1fr)}}
    @media(max-width:420px){.brand-svc-grid{grid-template-columns:1fr}}
"""

ALSO = """<section style="background:#f0f5ff;padding:30px 5%;border-top:1px solid #e0e7ff;">
  <p style="text-align:center;font-size:.82rem;font-weight:600;color:#6b7280;text-transform:uppercase;letter-spacing:1px;margin-bottom:1rem;">We Also Specialise In</p>
  <div style="display:flex;flex-wrap:wrap;gap:.5rem;justify-content:center;">
    <a href="toyota-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Toyota</a>
    <a href="nissan-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Nissan</a>
    <a href="bmw-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">BMW</a>
    <a href="mercedes-benz-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Mercedes-Benz</a>
    <a href="audi-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Audi</a>
    <a href="porsche-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Porsche</a>
    <a href="land-rover-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Land Rover</a>
    <a href="brands.html" style="background:var(--amber);border:1.5px solid var(--amber);border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:700;color:#fff;text-decoration:none;">All Brands &rarr;</a>
  </div>
</section>"""

def tile(href, icon, label):
    return f'    <a href="{href}" class="brand-svc-tile"><span class="svc-tile-icon">{icon}</span><span>{label}</span></a>'

def std_tiles(b):
    return "\n".join([
        tile("engine.html","⚙️",f"{b} Engine Repair"),
        tile("gearbox.html","🔄",f"{b} Gearbox Repair"),
        tile("brakes.html","🔧",f"{b} Suspension Repair"),
        tile("gearbox.html","⚡",f"{b} Transmission Repair"),
        tile("tyres.html","⚖️",f"{b} Wheel Alignment"),
        tile("engine.html","🔩",f"{b} Engine Refurbishment"),
        tile("diagnostics.html","💻",f"{b} Software Programming"),
        tile("ac-service.html","❄️",f"{b} AC Repair"),
        tile("engine.html","🌡️",f"{b} Engine Cooling Repair"),
        tile("brakes.html","🛑",f"{b} Brake Repair"),
        tile("diagnostics.html","📡",f"{b} Camera &amp; Radar Calibration"),
        tile("electrical.html","🔑",f"{b} Key Programming"),
        tile("pre-purchase-inspection.html","🔍",f"{b} Pre-Purchase Inspection"),
        tile("service-packages.html","📋",f"{b} Service Packages"),
        tile("detailing.html","✨",f"{b} Car Detailing"),
    ])

def make(slug, brand, models, tagline, intro,
         i1h,i1p, i2h,i2p, i3h,i3p, i4h,i4p,
         f1q,f1a, f2q,f2a, f3q,f3a, f4q,f4a, f5q,f5a,
         xtiles=""):
    url = f"https://myfixhive.ae/{slug}-repair-dubai.html"
    all_tiles = std_tiles(brand)
    if xtiles:
        all_tiles += "\n" + xtiles
    html = f"""<!DOCTYPE html>
<html lang="en">
<head>
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-819HFHM37T"></script>
  <script>window.dataLayer=window.dataLayer||[];function gtag(){{dataLayer.push(arguments);}}gtag('js',new Date());gtag('config','G-819HFHM37T');</script>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
  <title>{brand} Repair &amp; Service Dubai | {models} | FixHive</title>
  <meta name="description" content="Specialist {brand} repair in Dubai. {models}. Expert diagnostics, OEM parts, honest pricing. FixHive Garage, Dubai Investment Park."/>
  <meta name="robots" content="index,follow"/>
  <link rel="canonical" href="{url}"/>
  <meta name="geo.position" content="24.98;55.10">
  <meta name="geo.region" content="AE-DU">
  <meta name="geo.placename" content="Dubai">
  <link rel="alternate" hreflang="en-AE" href="{url}"/>
  <link rel="alternate" hreflang="x-default" href="{url}"/>
  <meta property="og:type" content="website"/>
  <meta property="og:url" content="{url}"/>
  <meta property="og:title" content="{brand} Repair &amp; Service Dubai | FixHive"/>
  <meta property="og:description" content="Specialist {brand} repair in Dubai. Expert diagnostics, OEM parts, honest pricing."/>
  <meta property="og:image" content="https://myfixhive.ae/images/og-fixhive.jpg"/>
  <link rel="stylesheet" href="shared.css"/>
  <style>{CSS}</style>
  <link rel="stylesheet" href="chatbot.css"/>
</head>
<body>
<a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment" class="top-bar" target="_blank" rel="noopener" aria-label="Contact FixHive on WhatsApp">
  <span class="top-bar-icon">💬</span>
  <span class="top-bar-text"><strong>Free Diagnostic Check</strong> &mdash; WhatsApp us your car problem now</span>
  <span class="top-bar-cta">Chat Now &rarr;</span>
</a>
{nav}
{mob}
<section class="page-hero">
  <div class="breadcrumb"><a href="index.html">Home</a> &rsaquo; <a href="brands.html">Brands</a> &rsaquo; {brand} Repair Dubai</div>
  <h1>{brand} Repair &amp; Service in Dubai</h1>
  <p>{tagline}</p>
</section>
<div class="page-content">
  <div class="brand-hero-logo">
    <img src="images/logos/{slug}.svg" alt="{brand} logo"/>
    <div>
      <div class="section-label">Brand Specialist</div>
      <h2 class="section-title" style="color:#1e3a8a;margin:0;">{brand} Service Centre Dubai</h2>
    </div>
  </div>
  <p class="intro-text">{intro}</p>
  <div class="section-label">Common Issues</div>
  <h2 class="section-title" style="color:#1e3a8a;">Common {brand} Problems in Dubai</h2>
  <div class="issues-grid">
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; {i1h}</h3><p>{i1p}</p></div>
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; {i2h}</h3><p>{i2p}</p></div>
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; {i3h}</h3><p>{i3p}</p></div>
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; {i4h}</h3><p>{i4p}</p></div>
  </div>
  <div class="section-label">What We Do</div>
  <h2 class="section-title" style="color:#1e3a8a;">Our {brand} Services in Dubai</h2>
  <div class="brand-svc-grid">
{all_tiles}
  </div>
  <p class="svc-tile-note">Plus a range of other services ensuring all functions of your {brand} are at their best. <a href="contact.html" style="color:var(--amber);font-weight:700;font-style:normal;">Ask us about your specific {brand} requirement &rarr;</a></p>
</div>
<section class="faq-section">
  <div class="section-label">Common Questions</div>
  <div class="section-title">Frequently Asked Questions &mdash; {brand} in Dubai</div>
  <div class="faq-list">
    <div class="faq-item"><button class="faq-q">{f1q}</button><div class="faq-a"><p>{f1a}</p></div></div>
    <div class="faq-item"><button class="faq-q">{f2q}</button><div class="faq-a"><p>{f2a}</p></div></div>
    <div class="faq-item"><button class="faq-q">{f3q}</button><div class="faq-a"><p>{f3a}</p></div></div>
    <div class="faq-item"><button class="faq-q">{f4q}</button><div class="faq-a"><p>{f4a}</p></div></div>
    <div class="faq-item"><button class="faq-q">{f5q}</button><div class="faq-a"><p>{f5a}</p></div></div>
  </div>
</section>
{ALSO}
<section class="page-cta">
  <h2>Book Your {brand} Service in Dubai</h2>
  <p>WhatsApp us your {brand} model and issue &mdash; we&rsquo;ll give you an honest quote before you drive in.</p>
  <a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment" class="btn-primary" target="_blank" rel="noopener">📲 Book on WhatsApp</a>
</section>
{foot}
<script>document.querySelectorAll('.faq-q').forEach(function(b){{b.addEventListener('click',function(){{var i=this.closest('.faq-item'),w=i.classList.contains('open');document.querySelectorAll('.faq-item').forEach(function(x){{x.classList.remove('open')}});if(!w)i.classList.add('open')}})}})</script>
<script src="chatbot.js" defer></script>
<script src="/js/nav.js" defer></script>
<script src="/js/search.js" defer></script>
</body></html>"""
    path = f"{DIR}/{slug}-repair-dubai.html"
    open(path,"w",encoding="utf-8").write(html)
    print(f"  OK  {slug}-repair-dubai.html  ({len(html)//1024}KB)")

print("gen_brand.py loaded — call make() to generate pages")
