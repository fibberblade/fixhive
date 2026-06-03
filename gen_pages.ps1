Set-Location "C:\Users\gianl\OneDrive\Desktop\AI\fixhive"

$audi = [System.IO.File]::ReadAllText('audi-repair-dubai.html', [System.Text.Encoding]::UTF8)
$nav  = [regex]::Match($audi, '(?s)<nav>.*?</nav>').Value
$mob  = [regex]::Match($audi, '(?s)<div class="mobile-menu".*?</div>(?=\s*<section class="page-hero")').Value
$foot = [regex]::Match($audi, '(?s)<footer>.*?</footer>').Value

$CSS = @'

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
'@

$ALSO = @'
<section style="background:#f0f5ff;padding:30px 5%;border-top:1px solid #e0e7ff;">
  <p style="text-align:center;font-size:.82rem;font-weight:600;color:#6b7280;text-transform:uppercase;letter-spacing:1px;margin-bottom:1rem;">We Also Specialise In</p>
  <div style="display:flex;flex-wrap:wrap;gap:.5rem;justify-content:center;">
    <a href="toyota-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Toyota</a>
    <a href="nissan-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Nissan</a>
    <a href="bmw-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">BMW</a>
    <a href="mercedes-benz-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Mercedes-Benz</a>
    <a href="audi-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Audi</a>
    <a href="porsche-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Porsche</a>
    <a href="land-rover-repair-dubai.html" style="background:#fff;border:1.5px solid #e5e7eb;border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:600;color:#1e3a8a;text-decoration:none;">Land Rover</a>
    <a href="brands.html" style="background:var(--amber);border:1.5px solid var(--amber);border-radius:20px;padding:.35rem .9rem;font-size:.8rem;font-weight:700;color:#fff;text-decoration:none;">All Brands →</a>
  </div>
</section>
'@

function Get-Tiles($b) {
    return @"
    <a href="engine.html" class="brand-svc-tile"><span class="svc-tile-icon">⚙️</span><span>$b Engine Repair</span></a>
    <a href="gearbox.html" class="brand-svc-tile"><span class="svc-tile-icon">🔄</span><span>$b Gearbox Repair</span></a>
    <a href="brakes.html" class="brand-svc-tile"><span class="svc-tile-icon">🔧</span><span>$b Suspension Repair</span></a>
    <a href="gearbox.html" class="brand-svc-tile"><span class="svc-tile-icon">⚡</span><span>$b Transmission Repair</span></a>
    <a href="tyres.html" class="brand-svc-tile"><span class="svc-tile-icon">⚖️</span><span>$b Wheel Alignment</span></a>
    <a href="engine.html" class="brand-svc-tile"><span class="svc-tile-icon">🔩</span><span>$b Engine Refurbishment</span></a>
    <a href="diagnostics.html" class="brand-svc-tile"><span class="svc-tile-icon">💻</span><span>$b Software Programming</span></a>
    <a href="ac-service.html" class="brand-svc-tile"><span class="svc-tile-icon">❄️</span><span>$b AC Repair</span></a>
    <a href="engine.html" class="brand-svc-tile"><span class="svc-tile-icon">🌡️</span><span>$b Engine Cooling Repair</span></a>
    <a href="brakes.html" class="brand-svc-tile"><span class="svc-tile-icon">🛑</span><span>$b Brake Repair</span></a>
    <a href="diagnostics.html" class="brand-svc-tile"><span class="svc-tile-icon">📡</span><span>$b Camera &amp; Radar Calibration</span></a>
    <a href="electrical.html" class="brand-svc-tile"><span class="svc-tile-icon">🔑</span><span>$b Key Programming</span></a>
    <a href="pre-purchase-inspection.html" class="brand-svc-tile"><span class="svc-tile-icon">🔍</span><span>$b Pre-Purchase Inspection</span></a>
    <a href="service-packages.html" class="brand-svc-tile"><span class="svc-tile-icon">📋</span><span>$b Service Packages</span></a>
    <a href="detailing.html" class="brand-svc-tile"><span class="svc-tile-icon">✨</span><span>$b Car Detailing</span></a>
"@
}

function Make-Page {
    param($slug,$brand,$models,$tagline,$intro,
          $i1h,$i1p,$i2h,$i2p,$i3h,$i3p,$i4h,$i4p,
          $f1q,$f1a,$f2q,$f2a,$f3q,$f3a,$f4q,$f4a,$f5q,$f5a,
          $xtile='')

    $url = "https://myfixhive.ae/$slug-repair-dubai.html"
    $allTiles = (Get-Tiles $brand)
    if ($xtile) { $allTiles += "`n    $xtile" }

    $esc = { param($s) $s -replace '"', '\"' }
    $bcSchema  = "{`"@context`":`"https://schema.org`",`"@type`":`"BreadcrumbList`",`"itemListElement`":[{`"@type`":`"ListItem`",`"position`":1,`"name`":`"Home`",`"item`":`"https://myfixhive.ae/`"},{`"@type`":`"ListItem`",`"position`":2,`"name`":`"Brands`",`"item`":`"https://myfixhive.ae/brands.html`"},{`"@type`":`"ListItem`",`"position`":3,`"name`":`"$brand Repair Dubai`",`"item`":`"$url`"}]}"
    $faqSchema = "{`"@context`":`"https://schema.org`",`"@type`":`"FAQPage`",`"mainEntity`":[{`"@type`":`"Question`",`"name`":`"$(&$esc $f1q)`",`"acceptedAnswer`":{`"@type`":`"Answer`",`"text`":`"$(&$esc $f1a)`"}},{`"@type`":`"Question`",`"name`":`"$(&$esc $f2q)`",`"acceptedAnswer`":{`"@type`":`"Answer`",`"text`":`"$(&$esc $f2a)`"}},{`"@type`":`"Question`",`"name`":`"$(&$esc $f3q)`",`"acceptedAnswer`":{`"@type`":`"Answer`",`"text`":`"$(&$esc $f3a)`"}},{`"@type`":`"Question`",`"name`":`"$(&$esc $f4q)`",`"acceptedAnswer`":{`"@type`":`"Answer`",`"text`":`"$(&$esc $f4a)`"}},{`"@type`":`"Question`",`"name`":`"$(&$esc $f5q)`",`"acceptedAnswer`":{`"@type`":`"Answer`",`"text`":`"$(&$esc $f5a)`"}}]}"

    $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-819HFHM37T"></script>
  <script>window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments);}gtag('js',new Date());gtag('config','G-819HFHM37T');</script>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
  <title>$brand Repair &amp; Service Dubai | $models | FixHive</title>
  <meta name="description" content="Specialist $brand repair in Dubai. $models. Expert diagnostics, OEM parts, honest pricing. FixHive Garage, Dubai Investment Park."/>
  <meta name="robots" content="index,follow"/>
  <link rel="canonical" href="$url"/>
  <meta name="geo.position" content="24.972111;55.1737988">
  <meta name="geo.region" content="AE-DU">
  <meta name="geo.placename" content="Dubai">
  <link rel="alternate" hreflang="en-AE" href="$url"/>
  <link rel="alternate" hreflang="x-default" href="$url"/>
  <script type="application/ld+json">$bcSchema</script>
  <script type="application/ld+json">$faqSchema</script>
  <meta property="og:type" content="website"/>
  <meta property="og:url" content="$url"/>
  <meta property="og:title" content="$brand Repair &amp; Service Dubai | FixHive"/>
  <meta property="og:description" content="Specialist $brand repair in Dubai. Expert diagnostics, OEM parts, honest pricing."/>
  <meta property="og:image" content="https://myfixhive.ae/images/og-fixhive.jpg"/>
  <link rel="stylesheet" href="shared.css"/>
  <style>$CSS</style>
  <link rel="stylesheet" href="chatbot.css"/>
</head>
<body>
<a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment" class="top-bar" target="_blank" rel="noopener" aria-label="Contact FixHive on WhatsApp">
  <span class="top-bar-icon">💬</span>
  <span class="top-bar-text"><strong>Free Diagnostic Check</strong> — WhatsApp us your car problem now</span>
  <span class="top-bar-cta">Chat Now →</span>
</a>
$nav
$mob
<section class="page-hero">
  <div class="breadcrumb"><a href="index.html">Home</a> › <a href="brands.html">Brands</a> › $brand Repair Dubai</div>
  <h1>$brand Repair &amp; Service in Dubai</h1>
  <p>$tagline</p>
</section>
<div class="page-content">
  <div class="brand-hero-logo">
    <img src="images/logos/$slug.svg" alt="$brand logo"/>
    <div>
      <div class="section-label">Brand Specialist</div>
      <h2 class="section-title" style="color:#1e3a8a;margin:0;">$brand Service Centre Dubai</h2>
    </div>
  </div>
  <p class="intro-text">$intro</p>
  <div class="section-label">Common Issues</div>
  <h2 class="section-title" style="color:#1e3a8a;">Common $brand Problems in Dubai</h2>
  <div class="issues-grid">
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; $i1h</h3><p>$i1p</p></div>
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; $i2h</h3><p>$i2p</p></div>
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; $i3h</h3><p>$i3p</p></div>
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; $i4h</h3><p>$i4p</p></div>
  </div>
  <div class="section-label">What We Do</div>
  <h2 class="section-title" style="color:#1e3a8a;">Our $brand Services in Dubai</h2>
  <div class="brand-svc-grid">
$allTiles
  </div>
  <p class="svc-tile-note">Plus a range of other services ensuring all functions of your $brand are at their best. <a href="contact.html" style="color:var(--amber);font-weight:700;font-style:normal;">Ask us about your specific $brand requirement →</a></p>
</div>
<section class="faq-section">
  <div class="section-label">Common Questions</div>
  <div class="section-title">Frequently Asked Questions — $brand in Dubai</div>
  <div class="faq-list">
    <div class="faq-item"><button class="faq-q">$f1q</button><div class="faq-a"><p>$f1a</p></div></div>
    <div class="faq-item"><button class="faq-q">$f2q</button><div class="faq-a"><p>$f2a</p></div></div>
    <div class="faq-item"><button class="faq-q">$f3q</button><div class="faq-a"><p>$f3a</p></div></div>
    <div class="faq-item"><button class="faq-q">$f4q</button><div class="faq-a"><p>$f4a</p></div></div>
    <div class="faq-item"><button class="faq-q">$f5q</button><div class="faq-a"><p>$f5a</p></div></div>
  </div>
</section>
$ALSO
<section class="page-cta">
  <h2>Book Your $brand Service in Dubai</h2>
  <p>WhatsApp us your $brand model and issue — we'll give you an honest quote before you drive in.</p>
  <a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment" class="btn-primary" target="_blank" rel="noopener">📲 Book on WhatsApp</a>
</section>
$foot
<script>document.querySelectorAll('.faq-q').forEach(function(b){b.addEventListener('click',function(){var i=this.closest('.faq-item'),w=i.classList.contains('open');document.querySelectorAll('.faq-item').forEach(function(x){x.classList.remove('open')});if(!w)i.classList.add('open')})})</script>
<script src="chatbot.js" defer></script>
<script src="/js/nav.js" defer></script>
<script src="/js/search.js" defer></script>
</body></html>
"@
    [System.IO.File]::WriteAllText("$slug-repair-dubai.html", $html, [System.Text.Encoding]::UTF8)
    Write-Host "  OK  $slug-repair-dubai.html  ($([int]($html.Length/1024))KB)"
}

# ── ISUZU ──────────────────────────────────────────────────────────────────
Make-Page -slug 'isuzu' -brand 'Isuzu' -models 'D-Max, MU-X, Trooper, Forward, NPR' `
 -tagline 'Isuzu specialist in Dubai — D-Max pickup expertise, 4JJ3 engine service, 4WD and commercial vehicle care.' `
 -intro "Isuzu is synonymous with reliability in the commercial vehicle space, and the D-Max pickup is one of the most capable and hardworking vehicles on UAE roads. Whether used for business or leisure off-roading, the D-Max and MU-X demand correct maintenance to achieve their full lifespan in harsh conditions.<br><br>FixHive has the tools and experience to service the full Isuzu range. The 3.0L 4JJ3 petrol engine and the MUA5 automatic gearbox have specific service requirements that we understand and follow correctly." `
 -i1h 'Isuzu D-Max 4WD and Differential Service' -i1p 'The D-Max 4WD system requires periodic transfer case and differential oil changes. Sand and desert use demands more frequent attention. Reluctance to engage 4WD and unusual noises are early warning signs.' `
 -i2h 'Isuzu MUA5 Automatic Gearbox Service' -i2p 'The MUA5 5-speed automatic benefits from fluid changes at 60,000–80,000 km in UAE conditions. Harsh shifts, hunting between gears and delayed engagement are signs of overdue service.' `
 -i3h 'Isuzu 4JJ3 Engine Timing and Valve Train' -i3p 'The 4JJ3 petrol engine requires correct timing and valve adjustment at scheduled intervals. Skipping these services leads to rough running, increased fuel consumption and eventually engine damage.' `
 -i4h 'Isuzu Suspension and Chassis Wear' -i4p 'The D-Max and MU-X leaf spring rear suspension develops wear in bushings, shackle pins and shock absorbers — particularly on vehicles used for towing or off-road. Clunking and poor ride quality indicate suspension service is due.' `
 -f1q 'How much does an Isuzu D-Max service cost in Dubai?' -f1a 'An Isuzu D-Max oil service at FixHive starts from AED 300–450. A major service starts from AED 700. We use the correct viscosity for the 4JJ3 engine in UAE conditions.' `
 -f2q 'Can you service the Isuzu MU-X in Dubai?' -f2a 'Yes — the MU-X shares its platform and engine with the D-Max and is well within our capability. We service the engine, automatic gearbox, 4WD system and suspension.' `
 -f3q 'Can you repair Isuzu 4WD systems?' -f3a 'Yes — D-Max part-time and auto 4WD systems including transfer case, front differential and 4WD engagement electronics are all within our workshop capability.' `
 -f4q 'Do you service Isuzu commercial vehicles in Dubai?' -f4a 'We service light commercial Isuzu vehicles including the D-Max, MU-X and Trooper. For heavy forward trucks we recommend specialist truck workshops.' `
 -f5q 'How often should I service my Isuzu D-Max in Dubai?' -f5a 'We recommend 7,500–10,000 km oil service intervals. Vehicles used for towing or off-road should be serviced at the lower end. Differential and transfer case oils should be changed every 40,000 km.' `
 -xtile '<a href="engine.html" class="brand-svc-tile"><span class="svc-tile-icon">🏔️</span><span>Isuzu 4WD &amp; Transfer Case Service</span></a>'

# ── JAGUAR ─────────────────────────────────────────────────────────────────
Make-Page -slug 'jaguar' -brand 'Jaguar' -models 'F-Pace, XF, XE, E-Pace, F-Type, I-Pace' `
 -tagline 'Jaguar specialist in Dubai — JLR SDD diagnostics, air suspension expertise, ZF gearbox service.' `
 -intro "Jaguar vehicles combine British style with modern performance, and the F-Pace and XF are among the most popular premium SUVs and saloons in Dubai. Modern Jaguar vehicles use sophisticated electronics, air suspension systems and ZF gearboxes that require specialist diagnostic equipment to service and repair correctly.<br><br>FixHive uses JLR-compatible SDD (Symptom Driven Diagnostics) tools giving full access to all Jaguar modules. Our technicians have experience across the full Jaguar range including air suspension repair, ZF 8-speed gearbox service and ADAS calibration." `
 -i1h 'Jaguar Air Suspension Faults' -i1p 'Air suspension on the F-Pace, XF and XJ develops compressor, air bag and height sensor faults — particularly under Dubai heat cycles. Symptoms include uneven ride height, prolonged levelling and suspension warning lights. We repair Jaguar air suspension correctly with quality components.' `
 -i2h 'Jaguar ZF 8-Speed Gearbox Service' -i2p 'The ZF 8HP automatic gearbox fitted to most Jaguar models benefits from fluid changes at 60,000–80,000 km in UAE conditions. Harsh shifts, hunting between gears and delayed engagement indicate overdue service. We carry correct ZF-specification fluid.' `
 -i3h 'Jaguar Timing Chain Stretch (AJ-V6, AJ-V8)' -i3p 'The 3.0L V6 supercharged and 5.0L V8 engines used in Jaguar models can develop timing chain guide wear at higher mileages, particularly when oil changes are deferred. Cold-start rattling and a stored camshaft correlation code are the warning signs.' `
 -i4h 'Jaguar InControl Electronics and Software Issues' -i4p 'Modern Jaguar infotainment and InControl connectivity systems can develop software glitches, touch screen faults and module communication errors. We diagnose and resolve Jaguar electronic faults using JLR-compatible SDD diagnostic tools.' `
 -f1q 'How much does a Jaguar service cost in Dubai?' -f1a 'A Jaguar minor service at FixHive starts from AED 700–1,000. A major service starts from AED 1,400. We always use the correct Jaguar-specification oil — typically 5W-30 or 0W-20 depending on the engine.' `
 -f2q 'Do you have Jaguar diagnostic equipment?' -f2a 'Yes — we use JLR-compatible SDD diagnostic tools giving full access to all Jaguar modules including engine, gearbox, air suspension, airbags and InControl systems. Not possible with generic OBD scanners.' `
 -f3q 'Can you repair Jaguar air suspension in Dubai?' -f3a 'Yes — Jaguar air suspension repair is one of our specialist services. We replace compressors, air bags and height sensors and carry out the correct calibration after repair.' `
 -f4q 'Can you service the Jaguar F-Pace in Dubai?' -f4a 'Yes — the F-Pace is a regular in our workshop. We service the 2.0T and 3.0T engines, ZF 8-speed gearbox and carry out ADAS calibration and air suspension repair.' `
 -f5q 'How often should I service my Jaguar in Dubai?' -f5a 'We recommend 10,000 km or 12-month service intervals in Dubai. ZF gearbox fluid should be replaced every 60,000–80,000 km and air suspension should be inspected annually.' `
 -xtile '<a href="brakes.html" class="brand-svc-tile"><span class="svc-tile-icon">💨</span><span>Jaguar Air Suspension Repair</span></a>'

# ── MINI ───────────────────────────────────────────────────────────────────
Make-Page -slug 'mini' -brand 'MINI' -models 'Cooper, Countryman, Clubman, Convertible, Paceman' `
 -tagline 'MINI specialist in Dubai — BMW ISTA diagnostics, N18 engine expertise, twin-scroll turbo service.' `
 -intro "MINI vehicles bring genuine driving pleasure in a compact package, and the Cooper and Countryman are popular in Dubai for their character and practicality. Modern MINIs are built on BMW architecture and share many electronic systems — requiring BMW-level diagnostic expertise to service correctly.<br><br>FixHive uses BMW ISTA-compatible diagnostic tools giving full access to all MINI modules. Our technicians are experienced with the specific requirements of N14, N18 and B38 engines including timing chain awareness and turbocharger maintenance." `
 -i1h 'MINI N18 Engine Timing Chain Issues' -i1p 'The N18 1.6T engine fitted to the Cooper S and JCW models has a known timing chain tensioner issue. Cold-start rattling and rough running are warning signs. If caught early this is a manageable repair — left too long it causes severe engine damage. We replace MINI timing chains correctly.' `
 -i2h 'MINI Carbon Build-Up on Turbo Petrol Engines' -i2p 'MINI Cooper S and JCW turbocharged engines use direct injection that allows carbon deposits to accumulate on intake valves. Rough idle, reduced power and hesitation under acceleration are symptoms. Intake cleaning restores performance on affected models.' `
 -i3h 'MINI CVT and DCT Gearbox Service' -i3p 'Automatic MINI models use either a DCT (dual-clutch) or torque converter automatic. Both require fluid changes at UAE-appropriate intervals. Jerky shifts and shudder under light acceleration in the DCT indicate clutch wear or degraded fluid.' `
 -i4h 'MINI Electrical and VANOS System Issues' -i4p 'The VANOS variable valve timing system on older MINI models can develop solenoid faults and oil pressure issues causing rough idle and stored camshaft codes. Modern MINI models can also develop infotainment and comfort module electrical faults that require BMW ISTA coding to resolve.' `
 -f1q 'How much does a MINI service cost in Dubai?' -f1a 'A MINI oil service at FixHive starts from AED 400–600. A major service starts from AED 900. We use the correct BMW/MINI LL-01 specification oil — not a generic substitute.' `
 -f2q 'Do you have MINI diagnostic equipment?' -f2a 'Yes — we use BMW ISTA-compatible diagnostic tools covering all MINI modules including engine, gearbox, airbags, comfort electronics and ADAS. The same level of diagnostics as a BMW/MINI dealer.' `
 -f3q 'Can you fix MINI timing chain problems in Dubai?' -f3a 'Yes — MINI N14 and N18 timing chain replacement is within our capability. We replace the chain, tensioner and guides as a complete assembly and carry out the correct engine reassembly procedure.' `
 -f4q 'Can you service MINI JCW models in Dubai?' -f4a 'Yes — the John Cooper Works models with their uprated turbocharged engines and performance brakes are within our capability. We carry the correct oil grade for JCW engines.' `
 -f5q 'How often should I service my MINI in Dubai?' -f5a 'We recommend 8,000–10,000 km oil service intervals in Dubai. MINI turbocharged engines are sensitive to oil quality — do not extend beyond 10,000 km in UAE conditions.' `
 -xtile '<a href="diagnostics.html" class="brand-svc-tile"><span class="svc-tile-icon">💻</span><span>MINI VANOS System Repair</span></a>'

# ── VOLVO ──────────────────────────────────────────────────────────────────
Make-Page -slug 'volvo' -brand 'Volvo' -models 'XC90, XC60, S60, V60, XC40, C40 Recharge' `
 -tagline 'Volvo specialist in Dubai — VIDA diagnostics, Drive-E engine expertise, ADAS and safety system service.' `
 -intro "Volvo has built a strong reputation in Dubai for safety, practicality and Scandinavian design. The XC90, XC60 and S60 are popular family vehicles with sophisticated safety systems that require specialist diagnostic tools to maintain correctly.<br><br>FixHive uses VIDA-compatible Volvo diagnostic tools giving full access to all Volvo modules — including Drive-E engine management, DSTC stability control, City Safety and all Pilot Assist ADAS functions." `
 -i1h 'Volvo Drive-E Engine Timing and Service' -i1p 'The Drive-E 2.0L 4-cylinder turbocharged engines (T5, T6, T8) used across XC90, XC60 and S60 models have specific oil requirements and timing belt or chain service intervals. The T5 and T6 use a timing belt — missing this interval risks complete engine destruction on interference engines.' `
 -i2h 'Volvo Air Suspension (XC90, XC60)' -i2p 'Some XC90 and XC60 models feature air spring rear suspension that develops compressor and air bag faults under Dubai heat loads. Symptoms include uneven ride height and a sagging rear end. We repair Volvo air suspension with quality replacement components.' `
 -i3h 'Volvo DSTC and Stability Control Faults' -i3p 'The DSTC (Dynamic Stability and Traction Control) and City Safety pre-collision systems can develop sensor faults and require recalibration after wheel alignment changes, windscreen replacement or front-end work.' `
 -i4h 'Volvo Infotainment and Sensus Electronics' -i4p 'The Sensus infotainment system in older XC90 and V60 models can develop screen, connectivity and software issues. We diagnose Volvo infotainment faults and handle module replacement with the correct VIDA programming procedure.' `
 -f1q 'How much does a Volvo service cost in Dubai?' -f1a 'A Volvo oil service at FixHive starts from AED 600–900. A major service starts from AED 1,200. We use the correct VCC RBS0-2AE oil specification for Drive-E engines.' `
 -f2q 'Do you have Volvo diagnostic equipment?' -f2a 'Yes — we use VIDA-compatible tools giving full access to all Volvo modules including engine, transmission, air suspension, City Safety and Pilot Assist systems.' `
 -f3q 'Can you service the Volvo XC90 in Dubai?' -f3a 'Yes — the XC90 is one of the most popular premium SUVs we work on. We service all Drive-E variants including the T8 Twin Engine plug-in hybrid.' `
 -f4q 'Can you service Volvo hybrid models in Dubai?' -f4a 'Yes — the XC90 T8, XC60 T8 and S60 T8 Twin Engine plug-in hybrids are within our capability. We carry out both ICE and electric drivetrain maintenance.' `
 -f5q 'How often should I service my Volvo in Dubai?' -f5a 'We recommend 10,000–12,000 km service intervals in Dubai. Timing belt models (B4204T engines) should have the belt replaced strictly at the manufacturer interval — no exceptions in Dubai heat.' `
 -xtile '<a href="hybrid-ev.html" class="brand-svc-tile"><span class="svc-tile-icon">🔋</span><span>Volvo Hybrid &amp; Plug-In Service</span></a>'

# ── GENESIS ────────────────────────────────────────────────────────────────
Make-Page -slug 'genesis' -brand 'Genesis' -models 'GV80, GV70, G80, G90, GV60' `
 -tagline 'Genesis specialist in Dubai — GDS diagnostics, air suspension service, luxury car expertise at fair prices.' `
 -intro "Genesis is Hyundai's luxury brand and has established a strong presence in Dubai with the GV80 and G80. Built on the same platform as premium Hyundai models but with enhanced materials and technology, Genesis vehicles share diagnostic requirements with Hyundai/Kia but have their own specific service requirements.<br><br>FixHive uses GDS-compatible Genesis diagnostic tools and our technicians are experienced with the specific requirements of the Tau V8, Lambda V6 and 2.5T turbocharged engines used across the Genesis range." `
 -i1h 'Genesis Air Suspension Faults (GV80, G90)' -i1p 'The GV80 and G90 feature air suspension systems that develop compressor, air bag and height sensor faults under Dubai heat. Symptoms include uneven ride height and suspension warning lights. We repair Genesis air suspension with quality replacement components.' `
 -i2h 'Genesis DCT and 8-Speed Auto Service' -i2p 'The 8-speed automatic gearbox in Genesis models requires fluid changes at 60,000–80,000 km in UAE conditions. Harsh shifts and delayed engagement indicate overdue service. We carry the correct Hyundai/Genesis transmission fluid specification.' `
 -i3h 'Genesis ADAS and Highway Driving Assist Calibration' -i3p 'The HDA (Highway Driving Assist) and FCA (Forward Collision Avoidance) systems in Genesis models require camera and radar recalibration after any front-end, windscreen or sensor work. Improper calibration renders these safety systems inoperative.' `
 -i4h 'Genesis Electrical and Convenience Feature Issues' -i4p 'Genesis vehicles feature extensive electronic convenience systems including the clamshell door handles, ambient lighting and touch controls. These can develop module faults that require GDS coding and adaptation to resolve correctly.' `
 -f1q 'How much does a Genesis service cost in Dubai?' -f1a 'A Genesis minor service at FixHive starts from AED 600–900. A major service starts from AED 1,200. We use the correct Genesis/Hyundai-specification engine oil.' `
 -f2q 'Do you have Genesis diagnostic equipment?' -f2a 'Yes — we use GDS-compatible diagnostic tools covering all Genesis modules including engine, transmission, air suspension, airbags and ADAS systems. The same diagnostic depth as an authorised Genesis centre.' `
 -f3q 'Can you service the Genesis GV80 in Dubai?' -f3a 'Yes — the GV80 is within our full capability. We service the 2.5T and 3.5T engines, 8-speed gearbox, air suspension and carry out ADAS calibration.' `
 -f4q 'Can you service Genesis V8 models in Dubai?' -f4a 'Yes — we service the G90 and other Genesis models equipped with the 5.0L Tau V8 engine. We carry the correct oil specification and have experience with the 8-speed gearbox in V8 configuration.' `
 -f5q 'How often should I service my Genesis in Dubai?' -f5a 'We recommend 10,000–12,000 km service intervals in Dubai. Air suspension should be inspected annually given the continuous heat cycling in UAE conditions.' `
 -xtile '<a href="brakes.html" class="brand-svc-tile"><span class="svc-tile-icon">💨</span><span>Genesis Air Suspension Repair</span></a>'

# ── PEUGEOT ────────────────────────────────────────────────────────────────
Make-Page -slug 'peugeot' -brand 'Peugeot' -models '3008, 5008, 208, 508, Partner, 2008' `
 -tagline 'Peugeot specialist in Dubai — Diagbox diagnostics, EAT8 gearbox service, i-Cockpit system expertise.' `
 -intro "Peugeot has a growing presence in Dubai with the 3008, 5008 and 208 offering strong value in their segments. Peugeot's French engineering includes the EAT8 Aisin automatic gearbox and the distinctive i-Cockpit digital interface that requires specific diagnostic tools to service correctly.<br><br>FixHive uses Diagbox-compatible Peugeot diagnostic tools giving full access to all modules — enabling proper fault diagnosis, module coding and service resets across all Peugeot systems." `
 -i1h 'Peugeot EAT8 Automatic Gearbox Issues' -i1p 'The EAT8 Aisin-sourced 8-speed automatic gearbox fitted to the 3008, 5008 and 508 benefits from fluid changes at 60,000–80,000 km in UAE conditions. Harsh shifts and hunting between gears indicate degraded fluid or valve body wear.' `
 -i2h 'Peugeot Electric Power Steering Faults' -i2p 'The electric power steering system on Peugeot models can develop control module faults causing heavy steering, erratic assistance and stored EPS warning codes. We diagnose and repair EPS issues using Diagbox-compatible tools with correct module coding.' `
 -i3h 'Peugeot i-Cockpit and Infotainment Issues' -i3p 'The i-Cockpit digital instrument cluster and NAC infotainment system in newer Peugeot models can develop display, connectivity and software glitches. We diagnose these electronically and handle module replacement with the correct Peugeot coding procedure.' `
 -i4h 'Peugeot AC System Performance in Dubai Heat' -i4p 'Peugeot AC systems — particularly on older 308 and 3008 models — can develop compressor clutch, condenser and refrigerant issues under Dubai heat. Annual AC checks and condenser cleaning are recommended.' `
 -f1q 'How much does a Peugeot service cost in Dubai?' -f1a 'A Peugeot oil service at FixHive starts from AED 350–550. A major service starts from AED 800. We use the correct Peugeot-specification oil — typically 5W-30 for turbocharged petrol engines.' `
 -f2q 'Do you have Peugeot diagnostic equipment?' -f2a 'Yes — we use Diagbox-compatible tools covering all Peugeot modules including engine, EAT8 gearbox, EPS, airbags and i-Cockpit systems.' `
 -f3q 'Can you service the Peugeot 3008 in Dubai?' -f3a 'Yes — the 3008 is a regular in our workshop. We service the 1.6T PureTech engine, EAT8 gearbox and carry out ADAS calibration and EPS diagnostics.' `
 -f4q 'Can you fix Peugeot EAT8 gearbox problems?' -f4a 'Yes — we carry out EAT8 fluid changes, valve body diagnostics and TCU coding as required. Correct fluid specification and the proper fill quantity are critical for this gearbox.' `
 -f5q 'How often should I service my Peugeot in Dubai?' -f5a 'We recommend 8,000–10,000 km service intervals in Dubai. PureTech turbo petrol engines can develop oil consumption issues if change intervals are extended — consistent servicing is important.' `
 -xtile '<a href="diagnostics.html" class="brand-svc-tile"><span class="svc-tile-icon">🖥️</span><span>Peugeot i-Cockpit System Repair</span></a>'

# ── RENAULT ────────────────────────────────────────────────────────────────
Make-Page -slug 'renault' -brand 'Renault' -models 'Duster, Koleos, Megane, Clio, Talisman, Arkana' `
 -tagline 'Renault specialist in Dubai — Clip diagnostics, EDC dual-clutch service, Duster 4WD expertise.' `
 -intro "Renault offers excellent value in Dubai with the Duster, Koleos and Megane all finding loyal customers. French engineering includes the EDC dual-clutch gearbox and CVT that have specific service requirements, and Renault's latest ADAS systems require professional calibration after any relevant repairs.<br><br>FixHive uses Clip/DiagBox-compatible Renault diagnostic tools giving full module access, enabling proper service resets, EDC adaptation and fault diagnosis across all systems." `
 -i1h 'Renault EDC Dual-Clutch Gearbox Issues' -i1p 'The EDC (Efficient Dual Clutch) gearbox fitted to Megane, Clio and Arkana can develop clutch wear, shudder and engagement hesitation — particularly in stop-start Dubai traffic. The correct adaptation reset and clutch replacement procedure requires specialist diagnostic tools.' `
 -i2h 'Renault Duster 4WD System Service' -i2p 'The Duster 4WD system with its electronically controlled rear coupling requires periodic fluid changes and can develop engagement faults. We service the Duster 4x4 coupling and carry out EDC2 4WD module diagnostics.' `
 -i3h 'Renault Turbocharged Engine Carbon Build-Up' -i3p 'The 1.3T TCe engine in the Koleos and Arkana uses direct injection that allows carbon deposits on intake valves over time. Rough idle and hesitation under load at higher mileages are symptoms. Intake cleaning restores performance.' `
 -i4h 'Renault Electrical and MediaNav Issues' -i4p 'The MediaNav infotainment system in older Renault models and the newer Easy Link system can develop screen, connectivity and software glitches. We diagnose Renault electronic faults and handle module replacement with correct Clip programming.' `
 -f1q 'How much does a Renault service cost in Dubai?' -f1a 'A Renault oil service at FixHive starts from AED 300–450. A full major service starts from AED 700. We use the correct Renault RN0700 or RN0720 oil specification.' `
 -f2q 'Do you have Renault diagnostic equipment?' -f2a 'Yes — we use Clip-compatible tools covering all Renault modules including engine, EDC gearbox, ABS, airbags and infotainment systems.' `
 -f3q 'Can you service the Renault Duster in Dubai?' -f3a 'Yes — the Duster is a regular in our workshop. We service the 1.3T and 2.0L engines, EDC gearbox, 4WD system and carry out TPMS and safety system resets.' `
 -f4q 'Can you fix Renault EDC gearbox problems?' -f4a 'Yes — we diagnose EDC faults, carry out clutch replacement with the correct adaptation procedure, and replace EDC mechatronic units where required.' `
 -f5q 'How often should I service my Renault in Dubai?' -f5a 'We recommend 8,000–10,000 km service intervals in Dubai. The EDC dual-clutch in stop-start traffic can wear faster than expected — regular diagnostics help catch clutch wear early.' `
 -xtile '<a href="engine.html" class="brand-svc-tile"><span class="svc-tile-icon">🏔️</span><span>Renault Duster 4WD Service</span></a>'

# ── FIAT ───────────────────────────────────────────────────────────────────
Make-Page -slug 'fiat' -brand 'Fiat' -models '500, Tipo, Doblo, 500X, Panda' `
 -tagline 'Fiat specialist in Dubai — MultiAir engine expertise, TCT dual-clutch service, Italian car diagnostics.' `
 -intro "Fiat vehicles offer unique Italian character in compact, efficient packages. The Fiat 500 and Tipo are popular in Dubai for their style and practicality. Fiat's MultiAir engine technology and TCT dual-clutch gearbox have specific service requirements that not all garages in Dubai are equipped to handle correctly.<br><br>FixHive uses FCA-compatible diagnostic tools (shared with Alfa Romeo, Jeep and Chrysler) giving full access to all Fiat modules for proper fault diagnosis and service resets." `
 -i1h 'Fiat TCT Dual-Clutch Gearbox Issues' -i1p 'The TCT (Twin Clutch Transmission) fitted to the Tipo and other models can develop shudder, hesitation and engagement issues in stop-start Dubai traffic. The correct adaptation reset procedure after clutch wear requires specialist diagnostic equipment.' `
 -i2h 'Fiat MultiAir Engine Carbon Build-Up' -i2p 'The MultiAir 1.4T engine uses direct injection that allows intake valve carbon deposits to accumulate over time. Rough idle and hesitation under acceleration are symptoms that respond well to intake cleaning.' `
 -i3h 'Fiat Electrical and UConnect System Issues' -i3p 'The UConnect infotainment system in Fiat models can develop screen, Bluetooth and software glitches. We diagnose Fiat electrical faults using FCA-compatible tools and handle module replacement with correct coding.' `
 -i4h 'Fiat AC System Maintenance in Dubai' -i4p "Fiat AC systems in the 500 and Tipo can struggle in Dubai's extreme summer heat. Refrigerant top-up and condenser cleaning are commonly needed, along with cabin filter replacement for optimal performance." `
 -f1q 'How much does a Fiat service cost in Dubai?' -f1a 'A Fiat oil service at FixHive starts from AED 250–400. A full major service starts from AED 650. We use the correct FCA-specification engine oil for MultiAir engines.' `
 -f2q 'Do you have Fiat diagnostic equipment?' -f2a 'Yes — we use FCA-compatible diagnostic tools covering all Fiat modules including engine, TCT gearbox, ABS, airbags and UConnect systems.' `
 -f3q 'Can you service the Fiat 500 in Dubai?' -f3a 'Yes — the Fiat 500 is a regular in our workshop. We service the 0.9 TwinAir and 1.4 MultiAir engines, manual and TCT gearboxes.' `
 -f4q 'Can you fix Fiat TCT gearbox problems?' -f4a 'Yes — we diagnose TCT faults including clutch wear, actuator issues and carry out the correct adaptation reset procedure after any clutch work.' `
 -f5q 'How often should I service my Fiat in Dubai?' -f5a 'We recommend 7,500–10,000 km service intervals in Dubai. MultiAir turbocharged engines are sensitive to oil quality — consistent servicing is important in UAE heat.' `
 -xtile '<a href="diagnostics.html" class="brand-svc-tile"><span class="svc-tile-icon">🇮🇹</span><span>Fiat MultiAir Engine Service</span></a>'

# ── ALFA ROMEO ─────────────────────────────────────────────────────────────
Make-Page -slug 'alfa-romeo' -brand 'Alfa Romeo' -models 'Giulia, Stelvio, Tonale, 4C, Giulietta' `
 -tagline "Alfa Romeo specialist in Dubai — FCA diagnostics, Quadrifoglio performance service, DNA system expertise." `
 -intro "Alfa Romeo brings Italian passion and driving dynamics to Dubai roads, with the Giulia and Stelvio finding enthusiastic owners who appreciate the brand's unique character. Alfa Romeo's 2.0T engine and Q4 AWD system require specific knowledge and diagnostic tools to service correctly.<br><br>FixHive uses FCA-compatible diagnostic tools shared with the Alfa Romeo platform, giving full module access for proper service resets, Q4 AWD calibration and DNA system diagnostics across all models." `
 -i1h 'Alfa Romeo 2.0T Timing Chain Service' -i1p 'The 2.0T turbocharged engine in the Giulia and Stelvio can develop timing chain guide wear at higher mileages. Cold-start rattling and stored camshaft correlation codes are warning signs. Early replacement prevents escalating engine damage.' `
 -i2h 'Alfa Romeo Q4 AWD System Faults' -i2p 'The Q4 all-wheel-drive system can develop rear coupling and transfer unit faults — particularly after spirited driving in Dubai heat. AWD warning lights and unusual handling under acceleration require prompt diagnosis and repair.' `
 -i3h 'Alfa Romeo DNA System and Electronics' -i3p 'The D.N.A. drive mode selector (Dynamic, Natural, Advanced Efficiency) can develop selector faults and module communication errors. Modern Alfa Romeo infotainment and comfort systems can also develop software issues requiring FCA coding.' `
 -i4h 'Alfa Romeo AC and Cooling System Maintenance' -i4p 'The 2.0T turbocharged engine generates significant heat under Dubai conditions. Cooling system maintenance — including coolant quality, thermostat function and intercooler performance — is important for longevity. Annual AC and cooling checks are recommended.' `
 -f1q 'How much does an Alfa Romeo service cost in Dubai?' -f1a 'An Alfa Romeo oil service at FixHive starts from AED 500–750. A major service starts from AED 1,000. We use the correct FCA-specification Selenia or equivalent approved oil.' `
 -f2q 'Do you have Alfa Romeo diagnostic equipment?' -f2a 'Yes — we use FCA-compatible diagnostic tools covering all Alfa Romeo modules including engine, Q4 AWD, airbags, DNA selector and infotainment systems.' `
 -f3q 'Can you service the Alfa Romeo Giulia in Dubai?' -f3a 'Yes — the Giulia and Giulia Quadrifoglio are within our capability. We service the 2.0T and 2.9T V6 engines, ZF 8-speed gearbox and Q4 AWD system.' `
 -f4q 'Can you service the Alfa Romeo Stelvio in Dubai?' -f4a 'Yes — the Stelvio with its 2.0T engine and Q4 AWD is a regular service vehicle. We carry out oil service, gearbox fluid change, Q4 system check and full diagnostic scan.' `
 -f5q 'How often should I service my Alfa Romeo in Dubai?' -f5a 'We recommend 8,000–10,000 km service intervals in Dubai. The 2.0T turbocharged engine benefits from quality oil and consistent change intervals — do not extend beyond 10,000 km in UAE conditions.' `
 -xtile '<a href="gearbox.html" class="brand-svc-tile"><span class="svc-tile-icon">🏎️</span><span>Alfa Romeo Q4 AWD Service</span></a>'

Write-Host "`nAll 9 pages generated."
