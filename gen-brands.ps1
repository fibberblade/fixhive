$base = "C:\Users\gianl\OneDrive\Desktop\AI\fixhive"

# ── FINAL NAV (all brands linked to dedicated pages) ──────────────────────────
$NAV = '<nav>
  <a href="index.html" class="logo"><img src="img/logo.webp" alt="FixHive Garage Dubai" /></a>
  <ul>
    <li class="has-dropdown"><a href="about.html" class="nav-packages-link">About</a><ul class="nav-dropdown"><li><a href="about.html#values">Our Values</a></li><li><a href="about.html#history">How We Got Here</a></li><li><a href="about.html#why-fixhive">Why Choose FixHive</a></li><li><a href="about.html#social">Stay Connected</a></li></ul></li>
    <li class="has-dropdown"><a href="services.html" class="nav-packages-link">Services</a><ul class="nav-dropdown"><li><a href="ac-service.html">AC &amp; Cooling</a></li><li><a href="engine.html">Engine &amp; Transmission</a></li><li><a href="brakes.html">Brakes &amp; Suspension</a></li><li><a href="tyres.html">Tyres &amp; Wheels</a></li><li><a href="body.html">Body &amp; Exterior</a></li><li><a href="electrical.html">Battery &amp; Electrical</a></li><li><a href="hybrid-ev.html">Hybrid &amp; EV</a></li><li><a href="pre-purchase-inspection.html">Pre-Purchase Inspection</a></li><li><a href="service-packages.html">Service Packages</a></li><li><a href="detailing.html">Detailing &amp; Protection</a></li><li><a href="gearbox.html">Gearbox &amp; Drivetrain</a></li><li><a href="diagnostics.html">Advanced Diagnostics</a></li></ul></li>
    <li><a href="diagnosis.html" class="nav-packages-link">Self Diagnosis</a></li>
    <li class="has-dropdown"><a href="brands.html" class="nav-packages-link">Brands</a><ul class="nav-mega"><li><a href="alfa-romeo-repair-dubai.html">Alfa Romeo</a></li><li><a href="aston-martin-repair-dubai.html">Aston Martin</a></li><li><a href="audi-repair-dubai.html">Audi</a></li><li><a href="bentley-repair-dubai.html">Bentley</a></li><li><a href="bmw-repair-dubai.html">BMW</a></li><li><a href="byd-repair-dubai.html">BYD</a></li><li><a href="cadillac-repair-dubai.html">Cadillac</a></li><li><a href="changan-repair-dubai.html">Changan</a></li><li><a href="chery-repair-dubai.html">Chery</a></li><li><a href="chevrolet-repair-dubai.html">Chevrolet</a></li><li><a href="chrysler-repair-dubai.html">Chrysler</a></li><li><a href="daihatsu-repair-dubai.html">Daihatsu</a></li><li><a href="dodge-repair-dubai.html">Dodge</a></li><li><a href="ferrari-repair-dubai.html">Ferrari</a></li><li><a href="fiat-repair-dubai.html">Fiat</a></li><li><a href="ford-repair-dubai.html">Ford</a></li><li><a href="gac-repair-dubai.html">GAC</a></li><li><a href="geely-repair-dubai.html">Geely</a></li><li><a href="genesis-repair-dubai.html">Genesis</a></li><li><a href="gmc-repair-dubai.html">GMC</a></li><li><a href="haval-repair-dubai.html">Haval</a></li><li><a href="honda-repair-dubai.html">Honda</a></li><li><a href="hongqi-repair-dubai.html">HongQi</a></li><li><a href="hyundai-repair-dubai.html">Hyundai</a></li><li><a href="infiniti-repair-dubai.html">Infiniti</a></li><li><a href="isuzu-repair-dubai.html">Isuzu</a></li><li><a href="jaguar-repair-dubai.html">Jaguar</a></li><li><a href="jeep-repair-dubai.html">Jeep</a></li><li><a href="jetour-repair-dubai.html">Jetour</a></li><li><a href="kia-repair-dubai.html">Kia</a></li><li><a href="lamborghini-repair-dubai.html">Lamborghini</a></li><li><a href="land-rover-repair-dubai.html">Land Rover</a></li><li><a href="lexus-repair-dubai.html">Lexus</a></li><li><a href="lincoln-repair-dubai.html">Lincoln</a></li><li><a href="maserati-repair-dubai.html">Maserati</a></li><li><a href="maybach-repair-dubai.html">Maybach</a></li><li><a href="mazda-repair-dubai.html">Mazda</a></li><li><a href="mercedes-benz-repair-dubai.html">Mercedes-Benz</a></li><li><a href="mg-repair-dubai.html">MG</a></li><li><a href="mini-repair-dubai.html">MINI</a></li><li><a href="mitsubishi-repair-dubai.html">Mitsubishi</a></li><li><a href="nissan-repair-dubai.html">Nissan</a></li><li><a href="peugeot-repair-dubai.html">Peugeot</a></li><li><a href="porsche-repair-dubai.html">Porsche</a></li><li><a href="ram-repair-dubai.html">RAM</a></li><li><a href="land-rover-repair-dubai.html">Range Rover</a></li><li><a href="renault-repair-dubai.html">Renault</a></li><li><a href="rolls-royce-repair-dubai.html">Rolls-Royce</a></li><li><a href="subaru-repair-dubai.html">Subaru</a></li><li><a href="suzuki-repair-dubai.html">Suzuki</a></li><li><a href="tesla-repair-dubai.html">Tesla</a></li><li><a href="toyota-repair-dubai.html">Toyota</a></li><li><a href="volkswagen-repair-dubai.html">Volkswagen</a></li><li><a href="volvo-repair-dubai.html">Volvo</a></li><li class="nav-mega-footer"><a href="brands.html">All Brands</a></li></ul></li>
    <li class="has-dropdown"><a href="service-packages.html" class="nav-packages-link">Packages</a><ul class="nav-dropdown"><li><a href="service-packages.html#fixcare">FixCare</a></li><li><a href="service-packages.html#fixprime">FixPrime</a></li><li><a href="service-packages.html#fixelite">FixElite</a></li></ul></li>
    <li><a href="offers.html" class="nav-offers-link">&#x1F525; Offers</a></li>
    <li><a href="contact.html" class="nav-packages-link">Contact</a></li>
    <li class="has-dropdown"><a href="#" class="nav-packages-link">More</a><ul class="nav-dropdown"><li><a href="faq.html">FAQ</a></li><li><a href="blogs.html">Blog</a></li><li><a href="gallery.html">Gallery</a></li></ul></li>
  </ul>
  <div class="nav-search" id="navSearch"><button class="nav-search-toggle" onclick="var ns=this.parentNode;ns.classList.toggle(''open'');if(ns.classList.contains(''open'')){var i=document.getElementById(''navSearchInput'');i&amp;&amp;i.focus()}" aria-label="Search"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg></button><div class="nav-search-drop"><input type="text" id="navSearchInput" placeholder="Search FixHive&#8230;" autocomplete="off" aria-label="Search FixHive"><div class="nav-search-results" id="navSearchResults"></div></div></div>
  <a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment" class="nav-cta">Book Now</a>
  <a href="ar/index.html" class="nav-lang">&#x1F1E6;&#x1F1EA; AR</a>
  <button class="nav-hamburger" onclick="document.getElementById(''mobileMenu'').classList.toggle(''open'')" aria-label="Menu"><span></span><span></span><span></span></button>
</nav>
<div class="mobile-menu" id="mobileMenu">
  <a href="services.html">All Services</a>
  <a href="ac-service.html" style="padding-left:1.5rem;font-size:0.87rem;">AC &amp; Cooling</a>
  <a href="engine.html" style="padding-left:1.5rem;font-size:0.87rem;">Engine &amp; Transmission</a>
  <a href="brakes.html" style="padding-left:1.5rem;font-size:0.87rem;">Brakes &amp; Suspension</a>
  <a href="tyres.html" style="padding-left:1.5rem;font-size:0.87rem;">Tyres &amp; Wheels</a>
  <a href="body.html" style="padding-left:1.5rem;font-size:0.87rem;">Body &amp; Exterior</a>
  <a href="electrical.html" style="padding-left:1.5rem;font-size:0.87rem;">Battery &amp; Electrical</a>
  <a href="hybrid-ev.html" style="padding-left:1.5rem;font-size:0.87rem;">Hybrid &amp; EV</a>
  <a href="pre-purchase-inspection.html" style="padding-left:1.5rem;font-size:0.87rem;">Pre-Purchase Inspection</a>
  <a href="service-packages.html" style="padding-left:1.5rem;font-size:0.87rem;">Service Packages</a>
  <a href="detailing.html" style="padding-left:1.5rem;font-size:0.87rem;">Detailing &amp; Protection</a>
  <a href="gearbox.html" style="padding-left:1.5rem;font-size:0.87rem;">Gearbox &amp; Drivetrain</a>
  <a href="diagnostics.html" style="padding-left:1.5rem;font-size:0.87rem;">Advanced Diagnostics</a>
  <a href="brands.html" style="color:var(--amber);font-weight:700;">Brands</a>
  <a href="about.html">About</a>
  <a href="contact.html">Contact</a>
  <a href="faq.html" style="padding-left:1.5rem;font-size:0.87rem;">FAQ</a>
  <a href="blogs.html" style="padding-left:1.5rem;font-size:0.87rem;">Blog</a>
  <a href="service-packages.html" style="color:var(--amber);font-weight:700;">Packages</a>
  <a href="offers.html" style="color:var(--amber);background:rgba(245,166,35,0.14);border:1.5px solid rgba(245,166,35,0.55);font-weight:700;border-radius:20px;padding:0.4rem 1rem;">&#x1F525; Special Offers</a>
  <a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment">&#x1F4F2; Book on WhatsApp</a>
</div>'

$NAV_AR = '<nav>
  <a href="../index.html" class="logo">FixHive<span style="color:#F5A623">.</span></a>
  <ul>
    <li class="has-dropdown"><a href="../about.html" class="nav-packages-link">من نحن</a></li>
    <li class="has-dropdown"><a href="../services.html" class="nav-packages-link">الخدمات</a></li>
    <li class="has-dropdown"><a href="../brands.html" class="nav-packages-link">الماركات</a></li>
    <li class="has-dropdown"><a href="../service-packages.html" class="nav-packages-link">الباقات</a></li>
    <li><a href="../contact.html" class="nav-packages-link">اتصل بنا</a></li>
    <li class="has-dropdown"><a href="#" class="nav-packages-link">المزيد</a><ul class="nav-dropdown"><li><a href="../faq.html">الأسئلة الشائعة</a></li><li><a href="../blogs.html">المدونة</a></li><li><a href="../gallery.html">المعرض</a></li></ul></li>
  </ul>
  <a href="https://wa.me/971541699500?text=مرحبًا%2C%20رأيت%20موقعكم%20وأريد%20حجز%20موعد" class="nav-cta">احجز الآن</a>
  ENLINKPLACEHOLDER
  <button class="nav-hamburger" onclick="document.getElementById(''mobileMenu'').classList.toggle(''open'')" aria-label="القائمة"><span></span><span></span><span></span></button>
</nav>
<div class="mobile-menu" id="mobileMenu">
  <a href="../services.html">جميع الخدمات</a>
  <a href="../brands.html" style="color:var(--amber);font-weight:700;">الماركات</a>
  <a href="../about.html">من نحن</a>
  <a href="../faq.html">الأسئلة الشائعة</a>
  <a href="../contact.html">اتصل بنا</a>
  <a href="../blogs.html">المدونة</a>
  <a href="../service-packages.html" style="color:var(--amber);font-weight:700;">الباقات</a>
  <a href="https://wa.me/971541699500?text=مرحبًا%2C%20رأيت%20موقعكم%20وأريد%20حجز%20موعد">&#x1F4F2; احجز عبر واتساب</a>
</div>'

$FOOTER = '<footer>
  <div class="footer-grid">
    <div class="footer-brand">
      <a href="index.html" class="logo"><img src="img/logo.webp" alt="FixHive Garage Dubai" /></a>
      <p>Reliable, affordable car repair across Dubai. Dealer-level quality — without dealer prices.</p>
      <div class="footer-payment">
        <div class="footer-payment-label">We Accept</div>
        <div class="footer-payment-icons">
          <span class="pay-badge" title="Visa"><svg xmlns="http://www.w3.org/2000/svg" width="52" height="32" viewBox="0 0 52 32"><rect width="52" height="32" rx="4" fill="#1A1F71"/><text x="26" y="23" font-family="Arial,Helvetica,sans-serif" font-size="16" font-weight="900" font-style="italic" fill="#fff" text-anchor="middle">VISA</text></svg></span>
          <span class="pay-badge" title="Mastercard"><svg xmlns="http://www.w3.org/2000/svg" width="52" height="32" viewBox="0 0 52 32"><rect width="52" height="32" rx="4" fill="#1d1d1d"/><circle cx="20" cy="16" r="10" fill="#EB001B"/><circle cx="32" cy="16" r="10" fill="#F79E1B"/><path d="M26 7a10 10 0 0 1 0 18A10 10 0 0 1 26 7z" fill="#FF5F00"/></svg></span>
          <a href="https://tabby.ai" class="pay-badge pay-tabby" target="_blank" rel="noopener">tabby</a>
          <a href="https://paymob.com" class="pay-badge pay-paymob" target="_blank" rel="noopener">paymob</a>
          <a href="https://www.fazaa.ae" class="pay-badge pay-fazaa" target="_blank" rel="noopener">fazaa</a>
        </div>
      </div>
    </div>
    <div><h4>Quick Links</h4><ul><li><a href="services.html">All Services</a></li><li><a href="brands.html">Car Brands</a></li><li><a href="about.html">About Us</a></li><li><a href="contact.html">Contact</a></li><li><a href="https://wa.me/971541699500">Book on WhatsApp</a></li></ul></div>
    <div class="footer-contact"><h4>Contact</h4><p>&#x1F4CD; WH2 FixHive, 80 Street<br>Dubai Investment Park First, Dubai, UAE</p><p>&#x1F550; Mon–Sat: 08:30 – 19:00</p><p>&#x1F4DE; <a href="tel:+971541699500">+971 54 169 9500</a></p><p>&#x2709;&#xFE0F; <a href="mailto:sale.ae@myfixhive.ae">sale.ae@myfixhive.ae</a></p><p>&#x1F4AC; <a href="https://wa.me/971541699500">WhatsApp Us</a></p></div>
  </div>
  <div class="footer-bottom"><span>&#xa9; 2026 FixHive Garage — Saher Auto General Repairing LLC</span><span>Dubai, UAE</span></div>
</footer>'

$FOOTER_AR = '<footer>
  <div class="footer-grid">
    <div class="footer-brand">
      <a href="../index.html" class="logo">FixHive<span style="color:#F5A623">.</span></a>
      <p>إصلاح سيارات موثوق وبأسعار معقولة في دبي. جودة الوكالة — بدون أسعار الوكالة.</p>
    </div>
    <div><h4>روابط سريعة</h4><ul><li><a href="../services.html">جميع الخدمات</a></li><li><a href="../brands.html">الماركات</a></li><li><a href="../about.html">من نحن</a></li><li><a href="../contact.html">اتصل بنا</a></li><li><a href="https://wa.me/971541699500">احجز عبر واتساب</a></li></ul></div>
    <div class="footer-contact"><h4>معلومات التواصل</h4><p>&#x1F4CD; WH2 FixHive، شارع 80<br>مدينة دبي للاستثمار، دبي، الإمارات</p><p>&#x1F550; الاثنين–السبت: 08:30 – 19:00</p><p>&#x1F4DE; <a href="tel:+971541699500">971 54 169 9500+</a></p><p>&#x1F4AC; <a href="https://wa.me/971541699500">واتساب</a></p></div>
  </div>
  <div class="footer-bottom"><span>&#xa9; 2026 FixHive Garage — Saher Auto General Repairing LLC</span><span>دبي، الإمارات</span></div>
</footer>'

$CSS_STYLES = '  <style>
    .page-content{padding:60px 5%;max-width:1100px;margin:0 auto;}
    .brand-hero-logo{display:flex;align-items:center;gap:1.5rem;margin-bottom:1.5rem;}
    .brand-hero-logo img{width:80px;height:80px;object-fit:contain;background:#fff;border-radius:12px;padding:0.8rem;box-shadow:0 2px 12px rgba(0,0,0,0.1);}
    .intro-text{font-size:1rem;line-height:1.8;color:#374151;max-width:820px;margin-bottom:2.5rem;}
    .issues-grid{display:grid;grid-template-columns:1fr 1fr;gap:1.5rem;margin:2rem 0 3rem;}
    .issue-item{background:#fff8f0;border:1.5px solid #fde68a;border-radius:10px;padding:1.4rem;}
    .issue-item h3{font-size:0.97rem;font-weight:700;color:#92400e;margin-bottom:0.5rem;}
    .issue-item p{font-size:0.88rem;color:#374151;line-height:1.65;margin:0;}
    .faq-section{padding:60px 5%;background:#f8faff;}
    .faq-section .section-title{color:#1e3a8a;}
    .faq-list{max-width:820px;margin:2rem auto 0;display:flex;flex-direction:column;gap:0.6rem;}
    .faq-item{background:#fff;border:1.5px solid #e5e7eb;border-radius:10px;overflow:hidden;}
    .faq-q{width:100%;text-align:left;padding:1rem 1.2rem;background:none;border:none;font-size:0.95rem;font-weight:600;color:#1e3a8a;cursor:pointer;display:flex;justify-content:space-between;align-items:center;gap:1rem;font-family:inherit;}
    .faq-q::after{content:"+";font-size:1.3rem;font-weight:400;color:#1d4ed8;flex-shrink:0;transition:transform .2s;}
    .faq-item.open .faq-q::after{transform:rotate(45deg);}
    .faq-a{max-height:0;overflow:hidden;transition:max-height .3s ease,padding .3s;padding:0 1.2rem;}
    .faq-a p{padding:0 0 1rem;color:#374151;font-size:0.9rem;line-height:1.7;margin:0;}
    .faq-item.open .faq-a{max-height:300px;padding-top:0;}
    .page-cta{background:linear-gradient(135deg,#0a2463,#1d4ed8);padding:50px 5%;text-align:center;color:#fff;}
    .page-cta h2{font-size:clamp(1.4rem,3vw,2rem);margin-bottom:0.8rem;}
    .page-cta p{color:rgba(255,255,255,0.8);margin-bottom:1.8rem;}
    .brand-svc-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:0.75rem;margin:1.5rem 0 1.2rem;}
    .brand-svc-tile{display:flex;flex-direction:row;align-items:center;gap:0.6rem;padding:0.7rem 0.9rem;background:#f8faff;border:1.5px solid #e0e7ff;border-radius:10px;text-decoration:none;color:#1e3a8a;font-size:0.87rem;font-weight:700;line-height:1.3;transition:border-color .2s,background .2s,box-shadow .2s,transform .15s;}
    .brand-svc-tile:hover{border-color:var(--amber);background:#fff;box-shadow:0 4px 18px rgba(10,36,99,0.1);transform:translateY(-2px);}
    .svc-tile-icon{font-size:1.25rem;flex-shrink:0;}
    .svc-tile-note{font-size:0.88rem;color:#6b7280;font-style:italic;margin:0.6rem 0 2.5rem;line-height:1.65;}
    @media(max-width:700px){.issues-grid{grid-template-columns:1fr;}.brand-svc-grid{grid-template-columns:repeat(2,1fr);}}
    @media(max-width:420px){.brand-svc-grid{grid-template-columns:1fr;}}
  </style>'

$CSS_STYLES_AR = '  <style>
    .page-content{padding:60px 5%;max-width:1100px;margin:0 auto;}
    .brand-hero-logo{display:flex;align-items:center;gap:1.5rem;margin-bottom:1.5rem;}
    .brand-hero-logo img{width:80px;height:80px;object-fit:contain;background:#fff;border-radius:12px;padding:0.8rem;box-shadow:0 2px 12px rgba(0,0,0,0.1);}
    .intro-text{font-size:1rem;line-height:2;color:#374151;max-width:820px;margin-bottom:2.5rem;}
    .issues-grid{display:grid;grid-template-columns:1fr 1fr;gap:1.5rem;margin:2rem 0 3rem;}
    .issue-item{background:#fff8f0;border:1.5px solid #fde68a;border-radius:10px;padding:1.4rem;}
    .issue-item h3{font-size:0.97rem;font-weight:700;color:#92400e;margin-bottom:0.5rem;}
    .issue-item p{font-size:0.88rem;color:#374151;line-height:1.8;margin:0;}
    .faq-section{padding:60px 5%;background:#f8faff;}
    .faq-list{max-width:820px;margin:2rem auto 0;display:flex;flex-direction:column;gap:0.6rem;}
    .faq-item{background:#fff;border:1.5px solid #e5e7eb;border-radius:10px;overflow:hidden;}
    .faq-q{width:100%;text-align:right;padding:1rem 1.2rem;background:none;border:none;font-size:0.95rem;font-weight:600;color:#1e3a8a;cursor:pointer;display:flex;justify-content:space-between;align-items:center;gap:1rem;font-family:inherit;}
    .faq-q::before{content:"+";font-size:1.3rem;font-weight:400;color:#1d4ed8;flex-shrink:0;transition:transform .2s;}
    .faq-item.open .faq-q::before{transform:rotate(45deg);}
    .faq-a{max-height:0;overflow:hidden;transition:max-height .3s ease,padding .3s;padding:0 1.2rem;}
    .faq-a p{padding:0 0 1rem;color:#374151;font-size:0.9rem;line-height:1.8;margin:0;text-align:right;}
    .faq-item.open .faq-a{max-height:300px;padding-top:0;}
    .page-cta{background:linear-gradient(135deg,#0a2463,#1d4ed8);padding:50px 5%;text-align:center;color:#fff;}
    .page-cta h2{font-size:clamp(1.4rem,3vw,2rem);margin-bottom:0.8rem;}
    .page-cta p{color:rgba(255,255,255,0.8);margin-bottom:1.8rem;}
    .brand-svc-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:0.75rem;margin:1.5rem 0 1.2rem;}
    .brand-svc-tile{display:flex;flex-direction:column;align-items:flex-start;gap:0.45rem;padding:1.1rem 1rem;background:#f8faff;border:1.5px solid #e0e7ff;border-radius:10px;text-decoration:none;color:#1e3a8a;font-size:0.87rem;font-weight:700;line-height:1.35;transition:border-color .2s,background .2s,box-shadow .2s,transform .15s;}
    .brand-svc-tile:hover{border-color:var(--amber);background:#fff;box-shadow:0 4px 18px rgba(10,36,99,0.1);transform:translateY(-2px);}
    .svc-tile-icon{font-size:1.3rem;}
    .svc-tile-note{font-size:0.88rem;color:#6b7280;font-style:italic;margin:0.6rem 0 2.5rem;line-height:1.8;}
    @media(max-width:700px){.issues-grid{grid-template-columns:1fr;}.brand-svc-grid{grid-template-columns:repeat(2,1fr);}}
    @media(max-width:420px){.brand-svc-grid{grid-template-columns:1fr;}}
  </style>'

$SVC_TILES_EN = '    <a href="engine.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F527;</span>Engine Repair &amp; Service</a>
    <a href="gearbox.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x2699;&#xFE0F;</span>Gearbox &amp; Transmission</a>
    <a href="brakes.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F6D1;</span>Brake Repair</a>
    <a href="brakes.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F697;</span>Suspension Repair</a>
    <a href="ac-service.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x2744;&#xFE0F;</span>AC Repair &amp; Regas</a>
    <a href="engine.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F321;&#xFE0F;</span>Cooling System Service</a>
    <a href="tyres.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x26AB;</span>Tyres &amp; Wheel Alignment</a>
    <a href="electrical.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F50B;</span>Battery &amp; Electrical</a>
    <a href="body.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F6E1;&#xFE0F;</span>Body &amp; Paint</a>
    <a href="pre-purchase-inspection.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F50D;</span>Pre-Purchase Inspection</a>
    <a href="detailing.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x2728;</span>PPF &amp; Detailing</a>
    <a href="service-packages.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F4CB;</span>Service Packages</a>'

$SVC_TILES_AR = '    <a href="../engine.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F527;</span>إصلاح المحرك</a>
    <a href="../gearbox.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x2699;&#xFE0F;</span>ناقل الحركة</a>
    <a href="../brakes.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F6D1;</span>الفرامل</a>
    <a href="../brakes.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F697;</span>التعليق</a>
    <a href="../ac-service.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x2744;&#xFE0F;</span>إصلاح التكييف</a>
    <a href="../engine.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F321;&#xFE0F;</span>نظام التبريد</a>
    <a href="../tyres.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x26AB;</span>الإطارات وضبط الإطارات</a>
    <a href="../electrical.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F50B;</span>البطارية والكهرباء</a>
    <a href="../body.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F6E1;&#xFE0F;</span>الهيكل والطلاء</a>
    <a href="../pre-purchase-inspection.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F50D;</span>فحص قبل الشراء</a>
    <a href="../detailing.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x2728;</span>تلميع وحماية</a>
    <a href="../service-packages.html" class="brand-svc-tile"><span class="svc-tile-icon">&#x1F4CB;</span>باقات الصيانة</a>'

# ── BRAND DATA ─────────────────────────────────────────────────────────────────
$brands = @(

@{ slug="aston-martin"; name="Aston Martin"; nameAr="أستون مارتن"
   title="Aston Martin Repair &amp; Service Dubai | FixHive Garage"
   desc="Expert Aston Martin repair in Dubai. DB11, Vantage, DBS Superleggera &amp; DBX specialists. AMG-sourced V8, twin-turbo V12 &amp; hybrid servicing. FixHive, Dubai."
   models="DB11 · Vantage · DBS Superleggera · DBX · Valkyrie"
   heroSub="Dubai specialists for Aston Martin DB11, Vantage, DBS and DBX — AMG-sourced engines, carbon-ceramic brakes and advanced driver systems maintained to factory standard."
   intro1="Aston Martin occupies an extraordinary position in Dubai's automotive landscape. A disproportionate number of the world's Aston Martins are registered in the UAE — the combination of tax-free pricing, year-round driving weather and a culture that genuinely appreciates hand-crafted British performance cars makes Dubai one of the brand's most important global markets. The DB11, Vantage, DBS Superleggera and the DBX SUV are all regular sights on Sheikh Zayed Road and in the car parks of the Palm, yet finding a workshop with the specific technical knowledge these cars require is far from straightforward."
   intro2="Since 2016, Aston Martin has sourced its V8 engines from AMG — the 4.0-litre twin-turbocharged unit found in the Vantage and DB11 V8. This is a sophisticated, high-output engine that responds well to correct servicing but is unforgiving of neglect or incorrect fluid specifications. The V12 models — DB11 V12, DBS Superleggera — use Aston's own 5.2-litre twin-turbo unit, a fundamentally different architecture requiring different service intervals and fluids. The DBX uses the AMG V8 tuned for SUV use. Each requires technicians who understand the specific calibration differences between the Aston and the AMG applications of these engines."
   intro3="Dubai's climate imposes particular stresses on Aston Martins. The carbon-ceramic brake systems fitted to most performance variants are exceptionally effective but require dedicated maintenance — standard brake fluid intervals are inadequate in UAE heat, and the ceramic disc faces need specialist inspection. The adaptive damping systems found on all current models are sensitive to heat cycling, and alignment specifications require rechecking after desert road use. At FixHive we hold the equipment and experience to service every current Aston Martin platform, maintaining your car's performance and residual value at a fraction of main dealer cost."
   i1h="AMG V8 Heat Management in Dubai Summers"
   i1p="The AMG-sourced 4.0-litre twin-turbo V8 in the Vantage and DB11 V8 operates under extreme thermal stress in Dubai's summers. Sustained high-speed driving in 48°C ambient temperatures can cause oil temperature to rise beyond the thermostat's compensation range if the oil is not fresh and correctly specified. Aston Martin recommends a specific 0W-40 fully synthetic oil; using incorrect viscosity causes oil film breakdown at operating temperature, increasing wear on the twin-turbo bearings. Annual oil changes are a minimum; in heavy Dubai summer use, we recommend every 8,000 km. We also check the intercooler charge air temperature sensors and turbo wastegate actuators at every service — common failure points in high-ambient conditions."
   i2h="Carbon-Ceramic Brake System Degradation"
   i2p="The carbon-ceramic brake packages fitted to DBS Superleggera and optionally to DB11 and Vantage perform outstandingly but require discipline in maintenance. In Dubai's stop-start traffic the rotors cycle between extreme heat and ambient temperatures repeatedly, which can cause surface glazing and micro-cracking on neglected systems. Brake fluid must be replaced annually regardless of mileage — DOT 4 Low Viscosity fluid absorbs moisture from the UAE's humid coastal air and loses its high boiling point. We use only Castrol React Performance DOT 4 LV and inspect the ceramic disc faces for crazing at every service."
   i3h="DBX Air Suspension &amp; Adaptive Damper Wear"
   i3p="The DBX's triple-chamber air suspension and adaptive damper system provides the ride quality Aston owners expect, but both systems are sensitive to UAE operating conditions. Air compressor units cycling in 45°C+ ambient air work significantly harder than in temperate climates, degrading the compressor diaphragm and valve block seals at an accelerated rate. Symptoms include a slight lean when parked overnight, a slow levelling-up on first start, or a warning light for the air suspension system. The adaptive dampers — sourced from Bilstein — have fluid that degrades with heat cycling and can cause handling inconsistency if not replaced on schedule. FixHive carries DBX suspension components in stock."
   i4h="Interior Electronics &amp; Infotainment Failures"
   i4p="Aston Martin's infotainment and ADAS electronics have an unfortunately mixed reliability record. The Mercedes-derived MBUX infotainment system in current models is generally robust, but the older MY2019-2021 systems using the Bosch system were prone to random reboots and software lockups in high ambient temperatures. USB charging ports and the 12V auxiliary battery that powers the infotainment system independently of the main battery are common failure items in UAE-registered cars. We have factory-level diagnostic tools for all Aston Martin electrical systems and can reflash infotainment firmware, replace the auxiliary battery and carry out full ADAS calibration after any repair affecting sensors."
   faq1q="How much does Aston Martin servicing cost in Dubai?"
   faq1a="Minor annual services for current Aston Martins at FixHive start from AED 1,800–2,500, covering oil and filter change, brake fluid replacement, multi-point inspection and tyre pressure calibration. Major services at 30,000 km intervals including spark plugs, air filters, gearbox oil and a full brake system inspection range from AED 3,500–6,000 depending on the model. We provide a full written quote before any work begins."
   faq2q="Can FixHive service my Aston Martin without voiding the warranty?"
   faq2a="Yes. Under UAE consumer protection regulations you are entitled to have your vehicle serviced at any qualified independent garage without voiding your manufacturer warranty, provided the correct parts, fluids and procedures are used and a proper service record is maintained. FixHive uses Aston Martin-specified fluids and OEM-equivalent parts, and issues full service documentation for every visit."
   faq3q="How often should I change the oil in my Aston Martin in Dubai?"
   faq3a="For Dubai conditions we recommend annual oil changes or every 8,000 km, whichever comes first — rather than the factory 12,000 km global recommendation. UAE heat accelerates oil oxidation significantly. The AMG V8 and the Aston V12 both use fully synthetic 0W-40 to manufacturer specification; we never substitute alternative viscosities."
   faq4q="Does FixHive have the diagnostic equipment for Aston Martin?"
   faq4a="Yes. We hold OBD diagnostic software covering all Aston Martin models from 2005 onwards, including the full range of factory fault codes, live data streams, and the ability to perform ECU and TCU adaptations. For infotainment and ADAS systems on Mercedes-based platforms we use the same diagnostic hardware as authorised dealers."
   faq5q="What is the recommended service interval for Aston Martin DBX in UAE?"
   faq5a="The DBX requires an annual service or 12,000 km (whichever comes first), but in UAE conditions we recommend 8,000 km intervals for oil changes and annual brake fluid replacement. The air suspension compressor filter should be inspected every 20,000 km, and the adaptive damper fluid checked at every major service. Tyres on the DBX wear faster than average due to the car's weight — we check tread depth and sidewall condition at every visit."
   ctaSub="Specialist British performance car care — DB11, Vantage, DBS and DBX maintained to factory standard in Dubai."
   waMsg="Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20Aston%20Martin%20service"
   relatedEn='<a href="porsche-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Porsche</a><a href="bmw-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">BMW</a><a href="mercedes-benz-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Mercedes-Benz</a><a href="land-rover-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Land Rover</a><a href="jaguar-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Jaguar</a>'
   titleAr="إصلاح أستون مارتن في دبي | DB11، Vantage، DBX | فيكس هايف"
   descAr="متخصصون في إصلاح وصيانة أستون مارتن في دبي. DB11 وVantage وDBS وDBX. محرك V8 وV12 توين تيربو. فيكس هايف، مدينة دبي للاستثمار."
   heroSubAr="متخصصون في أستون مارتن DB11 وVantage وDBS وDBX — محركات AMG، فرامل كربون سيراميك وأنظمة التعليق المتكيف، صيانة بمعايير المصنع."
   intro1Ar="تحتل أستون مارتن مكانة استثنائية في سوق السيارات بدبي. نسبة غير متناسبة من سيارات أستون مارتن في العالم مسجلة في الإمارات، إذ يجمع الأسعار الخالية من الضرائب والطقس المثالي للقيادة طوال العام وثقافة تقدير السيارات البريطانية المصنوعة يدوياً. DB11 وVantage وDBS Superleggera وSUV الـ DBX مشاهد مألوفة على شارع الشيخ زايد، غير أن إيجاد ورشة تمتلك المعرفة التقنية اللازمة لهذه السيارات ليس بالأمر اليسير."
   intro2Ar="منذ عام 2016 تستورد أستون مارتن محركات V8 من AMG — وحدة التوين تيربو سعة 4.0 لتر الموجودة في Vantage وDB11 V8. هذا محرك متطور وعالي الأداء يستجيب جيداً للصيانة الصحيحة لكنه لا يغفر الإهمال. أما موديلات V12 — DB11 V12 وDBS Superleggera — فتستخدم محرك 5.2 لتر التوين تيربو الخاص بأستون مارتن، وهو بنية مختلفة تماماً تتطلب فترات صيانة وسوائل مختلفة. كل موديل يتطلب فنيين يفهمون الفروقات الدقيقة في الضبط بين تطبيق أستون مارتن وAMG للمحركات."
   intro3Ar="يفرض مناخ دبي ضغوطاً خاصة على سيارات أستون مارتن. أنظمة الفرامل الكربون السيراميك تتطلب صيانة متخصصة — فترات تغيير سائل الفرامل القياسية غير كافية في حرارة الإمارات. تأثر أنظمة التخميد التكيفي بدورات الحرارة حاد. في فيكس هايف نمتلك المعدات والخبرة لصيانة جميع منصات أستون مارتن الحالية، مع الحفاظ على الأداء والقيمة السوقية للسيارة بتكلفة تقل كثيراً عن الوكيل."
   i1hAr="إدارة الحرارة في محرك AMG V8 خلال صيف دبي"
   i1pAr="يعمل محرك AMG التوين تيربو 4.0 لتر في Vantage وDB11 V8 تحت ضغط حراري شديد في صيف دبي. القيادة المستمرة بسرعة عالية عند 48°C يمكن أن ترفع درجة حرارة الزيت إلى ما هو أبعد من نطاق تعويض الثرموستات إذا لم يكن الزيت طازجاً ومطابقاً للمواصفات. تغيير الزيت السنوي حد أدنى؛ في الاستخدام الحاد بصيف دبي نوصي بكل 8,000 كم."
   i2hAr="تدهور نظام فرامل الكربون السيراميك"
   i2pAr="فرامل الكربون السيراميك في DBS Superleggera تؤدي أداءً رائعاً لكنها تتطلب انضباطاً في الصيانة. في ازدحام دبي تتعرض الأقراص لدورات حرارية متكررة مما قد يسبب تزجج السطح وتشققات دقيقة. يجب تغيير سائل الفرامل سنوياً بغض النظر عن المسافة — فسائل DOT 4 يمتص الرطوبة من الهواء الساحلي الرطب في الإمارات."
   i3hAr="تآكل نظام التعليق الهوائي وأجهزة التخميد في DBX"
   i3pAr="يوفر نظام التعليق الهوائي ثلاثي الغرف في DBX والتخميد التكيفي راحة ركوب استثنائية، لكن كلا النظامين حساسان لظروف التشغيل في الإمارات. وحدات ضاغط الهواء التي تعمل عند 45°C+ تتدهور بمعدل متسارع. الأعراض تشمل ميلاً طفيفاً عند الوقوف وبطئاً في الضبط عند الانطلاق."
   i4hAr="أعطال إلكترونيات المقصورة وشاشة المعلومات"
   i4pAr="سجّل نظام معلومات ومرفاهية أستون مارتن موثوقية متفاوتة. الأنظمة القديمة 2019-2021 كانت عرضة لإعادة التشغيل العشوائية في درجات الحرارة المرتفعة. منافذ الشحن وبطارية الـ 12 فولت المساعدة من أكثر العناصر عطباً في السيارات المسجلة بالإمارات. نمتلك أدوات تشخيص بمستوى المصنع لجميع أنظمة أستون مارتن الكهربائية."
   faq1qAr="كم تكلفة صيانة أستون مارتن في دبي؟"
   faq1aAr="تبدأ الصيانة السنوية الخفيفة في فيكس هايف من 1,800 إلى 2,500 درهم، وتشمل تغيير الزيت والفلتر واستبدال سائل الفرامل والفحص الشامل. الصيانة الكبرى كل 30,000 كم تتراوح بين 3,500 و6,000 درهم حسب الموديل."
   faq2qAr="هل تصون فيكس هايف ضمان أستون مارتن؟"
   faq2aAr="نعم. وفق أنظمة حماية المستهلك في الإمارات يحق لك صيانة سيارتك في أي ورشة مؤهلة دون إبطال الضمان. نستخدم سوائل وقطعاً وفق مواصفات أستون مارتن ونُصدر وثائق صيانة كاملة."
   faq3qAr="كم مرة يجب تغيير زيت أستون مارتن في دبي؟"
   faq3aAr="نوصي بتغيير الزيت سنوياً أو كل 8,000 كم أيهما أسبق — بدلاً من التوصية العالمية 12,000 كم. تسرّع حرارة الإمارات أكسدة الزيت بشكل ملحوظ."
   faq4qAr="هل تمتلك فيكس هايف أجهزة التشخيص الخاصة بأستون مارتن؟"
   faq4aAr="نعم. نمتلك برامج تشخيص OBD تغطي جميع موديلات أستون مارتن من 2005 حتى الآن، بما يشمل رموز الأعطال الكاملة وبيانات حية وإمكانية ضبط وحدات التحكم ECU وTCU."
   faq5qAr="ما فترة الصيانة الموصى بها لأستون مارتن DBX في الإمارات؟"
   faq5aAr="يتطلب DBX صيانة سنوية أو كل 12,000 كم أيهما أسبق، لكن في الإمارات نوصي بتغيير الزيت كل 8,000 كم واستبدال سائل الفرامل سنوياً. يجب فحص فلتر ضاغط التعليق الهوائي كل 20,000 كم."
   ctaSubAr="رعاية متخصصة لسيارات الأداء البريطانية — DB11 وVantage وDBS وDBX بمعايير المصنع."
},

@{ slug="bentley"; name="Bentley"; nameAr="بنتلي"
   title="Bentley Repair &amp; Service Dubai | FixHive Garage"
   desc="Expert Bentley repair in Dubai. Continental GT, Flying Spur, Mulsanne &amp; Bentayga specialists. W12 &amp; V8 servicing, air suspension &amp; multimedia. Book at FixHive."
   models="Continental GT · Flying Spur · Mulsanne · Bentayga · Bentayga EWB"
   heroSub="Dubai specialists for Bentley Continental GT, Flying Spur, Mulsanne and Bentayga — W12 and V8 Twin Turbo engine servicing, air suspension and bespoke interior care."
   intro1="Bentley is among the most coveted brands on Dubai's roads, and the UAE is consistently one of the largest Bentley markets globally. The Continental GT, Flying Spur, Mulsanne and Bentayga represent the pinnacle of British grand touring craftsmanship — cars where the leather stitching is counted by hand and the engine is signed by the technician who built it. Maintaining them to that standard requires workshops that understand not just the mechanical engineering but the complete philosophy of quality that underpins every Bentley."
   intro2="The W12 engine — Bentley's signature 6.0-litre twelve-cylinder twin-turbo unit — is a masterpiece of engineering that powers the top variants of every model. It requires specific 0W-40 fully synthetic oil meeting VW 504 00/507 00 specification, changed every 12 months or 15,000 km in UAE conditions rather than the global 25,000 km OCI. The V8 4.0-litre AMG-sourced twin-turbo engine fitted to the entry Continental GT V8, Flying Spur V8 and Bentayga V8 uses the same oil specification but has different service intervals. Both engines use a sophisticated wet-sump system with a variable-displacement oil pump that requires careful monitoring in extreme heat."
   intro3="The air suspension fitted to all current Bentleys is a multi-chamber air spring system with continuous damping control. In Dubai's climate this system faces twin challenges: the air compressor works harder in high ambient temperatures and the air springs are more susceptible to ozone degradation in the UAE's UV-intense environment. The Bentley Rotating Display — the three-sided instrument panel — is a bespoke electronic mechanism that requires specialist knowledge to diagnose and repair. At FixHive we maintain Bentleys for clients who expect the same quality of attention their car receives at a main dealer, but with the pricing transparency and personal service that only an independent specialist can offer."
   i1h="W12 Engine Oil Degradation in UAE Heat"
   i1p="Bentley's 6.0-litre W12 twin-turbocharged engine produces extraordinary power but also extraordinary heat. In Dubai's summers, sustained motorway speeds at 45°C+ cause oil temperatures to remain elevated for longer than the engine management system's ideal range, accelerating oxidation and reducing viscosity. The W12's oil capacity is relatively modest at 8.5 litres given the engine's output, meaning oil condition is more critical than in larger-sump European cars. We recommend 12-month or 12,000 km oil change intervals for UAE-driven W12 Bentleys, using only VW 504/507 specification 0W-40. We also inspect the cam phaser and VVT system for wear indicators at every service — these are known W12 wear items."
   i2h="Air Suspension Compressor &amp; Valve Block Failures"
   i2p="The air suspension on Continental GT, Flying Spur and Bentayga uses a single compressor to maintain all four air springs. In Dubai this compressor cycles more frequently because heat causes air spring pressure to fluctuate with temperature. Compressor diaphragm and valve block failures are the most common mechanical issue we see on UAE-registered Bentleys. Symptoms are initially subtle — a slow settling overnight, a slight rear lean — but progress to complete system failure if unaddressed. Bentley compressors are expensive; early intervention when symptoms first appear (from around AED 800 for valve block replacement) avoids a full compressor replacement (AED 3,500–5,000)."
   i3h="Bentayga Air Conditioning Evaporator Failures"
   i3p="The Bentayga's rear air conditioning system — which serves the rear-seat climate zone independently of the front — places additional load on the refrigerant circuit. The rear evaporator on Bentayga is mounted in a tight location beneath the rear floor, making it susceptible to condensation pooling and mould growth in Dubai's humid coastal environment. Symptoms include a musty smell from the rear vents and reduced cooling efficiency for rear passengers. We carry out an evaporator sterilisation service using chlorine-dioxide treatment as a preventive measure at every major service."
   i4h="Infotainment &amp; ADAS Calibration Issues"
   i4p="Bentley's current Bentayga and Continental GT use a modified version of the VW Group MIB3 infotainment platform. While generally reliable, it is sensitive to 12V battery health — a battery below 12.4V at rest can cause the system to enter a fault state requiring dealer-level reset. UAE parking in direct sunlight for extended periods during summer accelerates battery discharge. The ADAS suite — including adaptive cruise, lane keep assist and night vision on higher specifications — requires camera and radar calibration after any windscreen replacement or front-end repair. FixHive holds ADAS calibration targets for all current Bentley platforms."
   faq1q="How much does Bentley servicing cost in Dubai?"
   faq1a="Minor annual Bentley services at FixHive covering oil change, filter, multi-point inspection and brake fluid check start from AED 2,000–3,000 for V8 models and AED 2,500–3,500 for W12 models. Full major services at 30,000 km intervals range from AED 5,000–9,000 depending on model year and parts required. All prices are provided in writing before work begins."
   faq2q="Can FixHive service a Bentley without voiding the warranty?"
   faq2a="Yes. UAE consumer protection law permits servicing at any qualified independent workshop without warranty loss, provided manufacturer-specified parts and procedures are followed. We use Bentley-approved fluids and issue full service documentation."
   faq3q="How often should I service the Bentley W12 engine in Dubai?"
   faq3a="We recommend annual oil changes or every 12,000 km, whichever comes first. The factory 25,000 km global OCI is not appropriate for UAE conditions. The W12 is a high-output, thermally stressed engine — clean oil is its most important protection."
   faq4q="What are the most common Bentley problems in Dubai?"
   faq4a="Air suspension compressor and valve block failures are the most frequent mechanical issue we see on UAE Bentleys. Oil cooler seal weeping is common on high-mileage W12s. Infotainment system resets related to 12V battery degradation are also frequently encountered. All are manageable with proper preventive maintenance."
   faq5q="Does FixHive service the Bentley Bentayga specifically?"
   faq5a="Yes. The Bentayga is one of our most frequently serviced Bentley models. We cover all variants — Bentayga V8, Bentayga W12, Bentayga Hybrid and the extended-wheelbase EWB. Our technicians are familiar with the specific requirements of the Bentayga's air suspension, rear AC system and off-road mode calibration."
   ctaSub="W12 and V8 Twin Turbo expertise — Continental GT, Flying Spur, Mulsanne and Bentayga serviced to factory specification in Dubai."
   waMsg="Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20a%20Bentley%20service"
   relatedEn='<a href="rolls-royce-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Rolls-Royce</a><a href="mercedes-benz-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Mercedes-Benz</a><a href="bmw-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">BMW</a><a href="audi-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Audi</a><a href="porsche-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Porsche</a>'
   titleAr="إصلاح بنتلي في دبي | Continental GT، Flying Spur، Bentayga | فيكس هايف"
   descAr="متخصصون في إصلاح وصيانة بنتلي في دبي. Continental GT وFlying Spur وMulsanne وBentayga. محرك W12 وV8 توين تيربو. فيكس هايف دبي."
   heroSubAr="متخصصون في بنتلي Continental GT وFlying Spur وMulsanne وBentayga — محركات W12 وV8، تعليق هوائي ورعاية المقصورة الفاخرة بمعايير المصنع."
   intro1Ar="تُعدّ بنتلي من أكثر العلامات التجارية رواجاً على طرق دبي، والإمارات واحدة من أكبر أسواق بنتلي عالمياً. Continental GT وFlying Spur وMulsanne وBentayga تمثل قمة الحرفية البريطانية في صناعة السيارات الفارهة — سيارات تُعدّ فيها خيوط الجلد يدوياً ويوقّع المحرك باسم الفني الذي بناه."
   intro2Ar="محرك W12 — أحد عشر 6.0 لتر توين تيربو — تحفة هندسية تُحرّك أعلى إصدارات كل موديل. يتطلب زيت تخليقي كامل 0W-40 وفق مواصفة VW 504/507، يُغيَّر كل 12 شهراً أو 15,000 كم في الإمارات بدلاً من 25,000 كم عالمياً. محرك V8 AMG 4.0 لتر في Bentayga وContinental GT V8 يستخدم المواصفة ذاتها لكن بفترات صيانة مختلفة."
   intro3Ar="التعليق الهوائي في جميع بنتلي الحالية يواجه تحديين في مناخ دبي: الضاغط يعمل بجهد أكبر في درجات الحرارة المرتفعة، وأكياس الهواء أكثر عرضة للتدهور بسبب الأوزون في بيئة الإمارات المشعة بالأشعة فوق البنفسجية. في فيكس هايف نصون بنتلي للعملاء الذين يتوقعون جودة الوكيل مع شفافية الأسعار."
   i1hAr="تدهور زيت محرك W12 في حرارة الإمارات"
   i1pAr="يولّد محرك W12 حرارة استثنائية. في صيف دبي تبقى درجة حرارة الزيت مرتفعة لفترات أطول مما يُسرّع الأكسدة ويُخفّض اللزوجة. نوصي بتغيير الزيت كل 12 شهراً أو 12,000 كم لبنتلي W12 المُشغَّلة في الإمارات."
   i2hAr="أعطال ضاغط التعليق الهوائي وكتلة الصمامات"
   i2pAr="يستخدم التعليق الهوائي في Continental GT وFlying Spur وBentayga ضاغطاً واحداً لصون جميع نوابض الهواء الأربعة. الأعراض تشمل انخفاضاً خفياً أثناء الوقوف وميلاً طفيفاً في الخلف. التدخل المبكر يتجنب تكلفة استبدال الضاغط الكاملة."
   i3hAr="أعطال المبخّر الخلفي لتكييف Bentayga"
   i3pAr="يضع نظام تكييف الخلفية في Bentayga حملاً إضافياً على دائرة المبرد. المبخّر الخلفي معرّض لتجمع التكثف ونمو العفن في الجو الرطب لدبي. الأعراض تشمل رائحة كريهة من مخارج الهواء الخلفية وضعف في التبريد للركاب الخلفيين."
   i4hAr="أعطال المعلومات والترفيه وضبط ADAS"
   i4pAr="منصة المعلومات MIB3 في بنتلي الحالية حساسة لصحة بطارية 12 فولت. صف السيارات في الشمس المباشرة صيف دبي يُسرّع إفراغ البطارية. مجموعة ADAS تتطلب معايرة الكاميرا والرادار بعد أي استبدال للزجاج الأمامي."
   faq1qAr="كم تكلفة صيانة بنتلي في دبي؟"
   faq1aAr="تبدأ الصيانة السنوية من 2,000–3,000 درهم لموديلات V8 و2,500–3,500 درهم لموديلات W12. الصيانة الكبرى كل 30,000 كم تتراوح بين 5,000 و9,000 درهم."
   faq2qAr="هل تصون فيكس هايف ضمان بنتلي؟"
   faq2aAr="نعم. قوانين الإمارات تُجيز الصيانة في أي ورشة مؤهلة دون إبطال الضمان شريطة استخدام القطع والإجراءات الصحيحة."
   faq3qAr="كم مرة يجب تغيير زيت محرك W12 في دبي؟"
   faq3aAr="نوصي بتغيير الزيت سنوياً أو كل 12,000 كم أيهما أسبق. فترة 25,000 كم العالمية غير مناسبة لظروف الإمارات."
   faq4qAr="ما أكثر أعطال بنتلي شيوعاً في دبي؟"
   faq4aAr="أعطال ضاغط التعليق الهوائي وكتلة الصمامات هي الأكثر شيوعاً. كذلك تسرب مبرد المحرك في W12 عالي الكيلومترات وأعطال نظام المعلومات المرتبطة بتدهور البطارية."
   faq5qAr="هل تقدم فيكس هايف خدمات خاصة لـ Bentayga؟"
   faq5aAr="نعم. Bentayga من أكثر موديلات بنتلي التي نخدمها. نغطي جميع الإصدارات — V8 وW12 وHybrid وEWB — بما يشمل التعليق الهوائي وتكييف الخلفية وضبط وضع الطرق الوعرة."
   ctaSubAr="خبرة في W12 وV8 توين تيربو — Continental GT وFlying Spur وMulsanne وBentayga بمعايير المصنع في دبي."
},

@{ slug="byd"; name="BYD"; nameAr="بي واي دي"
   title="BYD Repair &amp; Service Dubai | FixHive Garage"
   desc="Expert BYD EV &amp; hybrid repair in Dubai. Han, Tang, Atto 3, Seal &amp; Dolphin specialists. Battery diagnostics, motor servicing &amp; OTA software. FixHive Dubai."
   models="Han · Tang · Atto 3 · Seal · Dolphin · Sea Lion · Sealion 6"
   heroSub="Dubai specialists for BYD electric and hybrid vehicles — Blade Battery diagnostics, electric motor service, thermal management and OTA software updates."
   intro1="BYD has become one of the fastest-growing automotive brands in the UAE, moving from relative obscurity to a mainstream presence on Dubai's roads within just a few years. The Chinese manufacturer's combination of impressive technology, strong value proposition and an expanding dealer network has made models like the Atto 3, Han, Seal and Dolphin increasingly common sights. As the UAE government pushes towards electrification targets and the Dubai Electric Vehicle Policy gains momentum, BYD is well positioned to continue growing — but as its fleet expands, so does the need for skilled independent service."
   intro2="BYD's most significant technological contribution is the Blade Battery — a lithium iron phosphate (LFP) chemistry cell format that arranges cells in long, flat 'blades' directly inside the battery pack without modules. This design has genuine advantages: LFP chemistry is more thermally stable than NMC, better suited to Dubai's extreme heat environment, and charges to 100% without the same capacity degradation penalty that NMC batteries face. However, BYD's Blade Battery still requires specialist thermal management system service — the liquid cooling plates and their glycol coolant must be checked and replaced on schedule to maintain cell-level temperature uniformity."
   intro3="BYD's Over-the-Air (OTA) software update capability means that many software issues can be resolved remotely, but hardware faults — particularly in the Battery Management System (BMS), on-board charger, and motor inverters — require specialist diagnostic equipment. FixHive has invested in BYD-compatible OBD tools that can read the full range of EV-specific fault codes, perform high-voltage system isolation tests, and carry out BMS adaptation procedures. We also service BYD's plug-in hybrid models, which add a conventional petrol engine and gearbox to the BYD EV platform."
   i1h="Blade Battery Thermal Management in Dubai Heat"
   i1p="Although BYD's LFP Blade Battery is inherently more heat-tolerant than NMC batteries, its thermal management system still has meaningful work to do in Dubai's 48°C+ summers. The liquid cooling circuit — using a water-glycol mix — must maintain individual cell temperatures below 45°C during fast charging and sustained driving. If the coolant level drops or the heat exchanger becomes partially blocked by dust (common in Dubai's dusty environment), battery management software will begin throttling charging speed and maximum power output to protect the cells. We clean the thermal management system coolant passages, replace coolant on schedule, and inspect the pump and heat exchanger at every major service."
   i2h="On-Board Charger &amp; DC Fast Charging Failures"
   i2p="BYD vehicles sold in the UAE use the CCS2 charging standard (and the proprietary BYD fast charging connector on some models). The on-board AC charger — typically 7kW or 11kW — is the most common high-voltage component failure we see on BYD vehicles. Symptoms include a failure to initiate AC charging, the charge port light flashing without current flowing, or an error message on the instrument display. DC fast charging issues are less common but can indicate a fault with the high-voltage DC/DC converter or the battery contactor relay. We hold high-voltage safety certified technicians and the equipment to diagnose and replace these components safely."
   i3h="ADAS Camera Calibration &amp; Radar Alignment"
   i3p="All current BYD models sold in the UAE are equipped with a full ADAS suite — forward collision warning, automatic emergency braking, lane keep assist and adaptive cruise. The forward-facing camera is mounted behind the windscreen; after any windscreen replacement or significant front-end impact, the camera must be statically and dynamically calibrated. The front radar — used for ACC and AEB — must be aligned to within 0.5 degrees horizontal. BYD's ADAS calibration procedure requires specific target distances and a level calibration bay. FixHive has invested in the calibration targets and software for all BYD platforms."
   i4h="Air Conditioning Compressor Load in UAE Climate"
   i4p="BYD's electric air conditioning compressor runs directly off the high-voltage battery, meaning AC use has a direct and significant impact on driving range in Dubai's climate. The compressor runs at near-maximum capacity for 8 months of the year, leading to accelerated wear on the compressor scroll and seals. Symptoms of a deteriorating compressor include reduced cooling efficiency despite the compressor running, an unusual whining noise from the engine bay, and a noticeable increase in range reduction when the AC is active. We carry BYD-compatible EV AC compressor units and refrigerant charge equipment for R-134a and R-1234yf systems."
   faq1q="How much does BYD servicing cost in Dubai?"
   faq1a="BYD EVs have lower running costs than combustion vehicles — there is no engine oil, no exhaust, and brake wear is reduced by regenerative braking. Annual services at FixHive covering cabin filter, thermal management coolant check, tyre rotation, brake inspection and software update check start from AED 400–600. Major services every 3 years or 60,000 km including coolant replacement and full battery system inspection range from AED 800–1,400."
   faq2q="Can FixHive service BYD vehicles competently?"
   faq2a="Yes. We have invested in BYD-compatible high-voltage diagnostic tools, trained our technicians in EV high-voltage safety procedures and stock common BYD service parts. We service all BYD EV and PHEV models currently sold in the UAE."
   faq3q="How does Dubai heat affect BYD's Blade Battery?"
   faq3a="LFP chemistry is inherently more heat-tolerant than the NMC batteries used in many competitors, so BYD has an advantage in UAE conditions. However, the thermal management system still needs to maintain cell temperatures below safe limits during fast charging and sustained highway driving. Regular coolant checks and ensuring the heat exchanger is clean are the key maintenance items for UAE BYD owners."
   faq4q="What happens if my BYD's battery warning light comes on?"
   faq4a="A battery warning light on a BYD indicates the BMS has detected an out-of-range condition — this could be a cell imbalance, a temperature sensor fault, a coolant leak, or a contactor relay issue. Do not ignore it; bring the car to FixHive for a full high-voltage system diagnostic. We can read the full BMS fault log and determine whether the issue is a sensor, software or hardware fault."
   faq5q="Does FixHive handle BYD PHEV models as well as pure EVs?"
   faq5a="Yes. BYD's PHEV models (DM-i and DM-p platforms) combine a petrol engine with an electric drive system. We service both aspects — the conventional engine and gearbox on the same schedule as a combustion car, and the high-voltage battery and motor system with EV-specific protocols."
   ctaSub="BYD Blade Battery diagnostics, EV AC, ADAS calibration and thermal management — specialist EV care in Dubai."
   waMsg="Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20a%20BYD%20service"
   relatedEn='<a href="tesla-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Tesla</a><a href="hyundai-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Hyundai</a><a href="kia-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Kia</a><a href="genesis-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Genesis</a><a href="mg-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">MG</a>'
   titleAr="إصلاح بي واي دي في دبي | Han، Atto 3، Seal | فيكس هايف"
   descAr="متخصصون في إصلاح وصيانة سيارات BYD الكهربائية والهجينة في دبي. Han وAtta 3 وSeal وDolphin. تشخيص بطارية Blade وتحديثات البرنامج."
   heroSubAr="متخصصون في سيارات BYD الكهربائية والهجينة — تشخيص بطارية Blade، خدمة المحرك الكهربائي وإدارة الحرارة."
   intro1Ar="أصبحت BYD من أسرع العلامات التجارية نمواً في الإمارات، إذ انتقلت خلال سنوات قليلة من علامة مجهولة إلى حضور سائد في شوارع دبي. Atto 3 وHan وSeal وDolphin مشاهد متكررة على الطرق الإماراتية. مع دفع حكومة الإمارات نحو أهداف التحول الكهربائي وسياسة دبي للسيارات الكهربائية، تتمتع BYD بموقع قوي للاستمرار في النمو."
   intro2Ar="أبرز إسهام BYD التقني هو بطارية Blade — خلايا ليثيوم فوسفات الحديد (LFP) مرتبة في ألواح مسطحة مباشرة داخل علبة البطارية. كيمياء LFP أكثر استقراراً حرارياً من NMC وأنسب لحرارة دبي الشديدة. ومع ذلك تحتاج نظام إدارة حرارة منتظمة — يجب فحص صفائح التبريد السائل وتغيير سائل الجليكول على الجدول لضمان توحيد درجات الحرارة على مستوى الخلية."
   intro3Ar="قدرة BYD على التحديث عبر الهواء (OTA) تحل كثيراً من مشكلات البرنامج عن بُعد، لكن الأعطال الصلبة — في نظام إدارة البطارية BMS وشاحن الصعود على المتن ومحولات المحرك — تتطلب أجهزة تشخيص متخصصة. استثمرت فيكس هايف في أدوات OBD متوافقة مع BYD تقرأ رموز الأعطال الكاملة الخاصة بالسيارات الكهربائية."
   i1hAr="إدارة حرارة بطارية Blade في حرارة دبي"
   i1pAr="رغم أن كيمياء LFP أكثر تحملاً للحرارة، إلا أن دائرة التبريد السائل تؤدي عملاً مهماً في 48°C+. إذا انخفض مستوى سائل التبريد أو انسدت مبادل الحرارة بالغبار، سيبدأ برنامج إدارة البطارية في تقليل سرعة الشحن والطاقة القصوى. نقوم بتنظيف ممرات نظام إدارة الحرارة وتغيير السائل وفحص المضخة عند كل صيانة كبرى."
   i2hAr="أعطال شاحن الصعود على المتن والشحن السريع DC"
   i2pAr="شاحن التيار المتردد على متن السيارة هو أكثر المكونات عالية الجهد عطباً في سيارات BYD. الأعراض تشمل فشل بدء الشحن المتردد أو وميض ضوء منفذ الشحن دون تدفق التيار. نمتلك فنيين معتمدين في سلامة الجهد العالي وأجهزة لتشخيص واستبدال هذه المكونات بأمان."
   i3hAr="معايرة كاميرا ADAS ومحاذاة الرادار"
   i3pAr="جميع موديلات BYD الحالية مجهزة بمجموعة ADAS كاملة. بعد أي استبدال للزجاج الأمامي أو تأثر في المقدمة يجب معايرة الكاميرا والرادار. نمتلك أهداف المعايرة والبرنامج لجميع منصات BYD."
   i4hAr="حمل ضاغط التكييف في مناخ الإمارات"
   i4pAr="ضاغط التكييف الكهربائي في BYD يعمل بشكل مباشر من البطارية عالية الجهد، مما يؤثر على المدى بشكل ملحوظ. يعمل الضاغط بقرب أقصى طاقته 8 أشهر في السنة مما يُسرّع تآكل الملف والمانعات."
   faq1qAr="كم تكلفة صيانة BYD في دبي؟"
   faq1aAr="تكاليف تشغيل سيارات BYD الكهربائية أقل من سيارات الاحتراق. الصيانة السنوية من 400–600 درهم. الصيانة الكبرى كل 3 سنوات أو 60,000 كم من 800–1,400 درهم."
   faq2qAr="هل تستطيع فيكس هايف صيانة سيارات BYD بكفاءة؟"
   faq2aAr="نعم. استثمرنا في أدوات تشخيص عالية الجهد متوافقة مع BYD ودرّبنا فنيينا على إجراءات السلامة الكهربائية."
   faq3qAr="كيف تؤثر حرارة دبي على بطارية Blade؟"
   faq3aAr="كيمياء LFP أكثر تحملاً للحرارة من NMC مما يمنح BYD ميزة في ظروف الإمارات. لكن نظام إدارة الحرارة لا يزال يحتاج إلى صيانة منتظمة لضمان الأداء الأمثل."
   faq4qAr="ماذا أفعل إذا أضاء تحذير البطارية في BYD؟"
   faq4aAr="تحذير البطارية يعني أن BMS اكتشف حالة خارج النطاق — لا تتجاهله. أحضر سيارتك لفيكس هايف لتشخيص شامل لنظام الجهد العالي."
   faq5qAr="هل تخدم فيكس هايف موديلات BYD الهجينة أيضاً؟"
   faq5aAr="نعم. نخدم موديلات BYD الهجينة (DM-i وDM-p) — المحرك البنزيني والمسافة الكاملة مع منظومة الدفع الكهربائي وفق بروتوكولات متخصصة."
   ctaSubAr="تشخيص بطارية Blade، تكييف كهربائي، معايرة ADAS وإدارة الحرارة — رعاية متخصصة للسيارات الكهربائية في دبي."
}
) # End first batch - more brands added below

# ── Helper: generate EN page ───────────────────────────────────────────────────
function New-ENPage($b) {
$schemaFaq = ($b.faq1q,$b.faq1a,$b.faq2q,$b.faq2a,$b.faq3q,$b.faq3a,$b.faq4q,$b.faq4a,$b.faq5q,$b.faq5a) | ForEach-Object { $_ -replace '"','\"' }
$sf1q=$schemaFaq[0];$sf1a=$schemaFaq[1];$sf2q=$schemaFaq[2];$sf2a=$schemaFaq[3]
$sf3q=$schemaFaq[4];$sf3a=$schemaFaq[5];$sf4q=$schemaFaq[6];$sf4a=$schemaFaq[7]
$sf5q=$schemaFaq[8];$sf5a=$schemaFaq[9]
return @"
<!DOCTYPE html>
<html lang="en">
<head>
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-819HFHM37T"></script>
    <script>window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments);}gtag('js',new Date());gtag('config','G-819HFHM37T');</script>
  <meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>$($b.title)</title>
  <meta name="description" content="$($b.desc)" />
  <meta name="robots" content="index, follow" />
  <link rel="canonical" href="https://myfixhive.ae/$($b.slug)-repair-dubai.html" />
  <meta name="geo.position" content="24.972111;55.1737988">
  <meta name="geo.region" content="AE-DU">
  <meta name="geo.placename" content="Dubai">
  <link rel="alternate" hreflang="en-AE" href="https://myfixhive.ae/$($b.slug)-repair-dubai.html" />
  <link rel="alternate" hreflang="ar-AE" href="https://myfixhive.ae/ar/$($b.slug)-repair-dubai.html" />
  <link rel="alternate" hreflang="x-default" href="https://myfixhive.ae/$($b.slug)-repair-dubai.html" />
  <meta property="og:type" content="website" /><meta property="og:url" content="https://myfixhive.ae/$($b.slug)-repair-dubai.html" />
  <meta property="og:title" content="$($b.name) Repair Dubai | FixHive" /><meta property="og:description" content="$($b.desc)" />
  <meta property="og:image" content="https://myfixhive.ae/images/og-fixhive.jpg" /><meta property="og:site_name" content="FixHive Garage" /><meta property="og:locale" content="en_AE" />
  <meta name="twitter:card" content="summary_large_image" />
  <script type="application/ld+json">
  {"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"Home","item":"https://myfixhive.ae/"},{"@type":"ListItem","position":2,"name":"$($b.name) Repair Dubai","item":"https://myfixhive.ae/$($b.slug)-repair-dubai.html"}]}
  </script>
  <script type="application/ld+json">
  {"@context":"https://schema.org","@type":"FAQPage","mainEntity":[{"@type":"Question","name":"$sf1q","acceptedAnswer":{"@type":"Answer","text":"$sf1a"}},{"@type":"Question","name":"$sf2q","acceptedAnswer":{"@type":"Answer","text":"$sf2a"}},{"@type":"Question","name":"$sf3q","acceptedAnswer":{"@type":"Answer","text":"$sf3a"}},{"@type":"Question","name":"$sf4q","acceptedAnswer":{"@type":"Answer","text":"$sf4a"}},{"@type":"Question","name":"$sf5q","acceptedAnswer":{"@type":"Answer","text":"$sf5a"}}]}
  </script>
  <link rel="stylesheet" href="shared.css" />
$CSS_STYLES
  <link rel="stylesheet" href="chatbot.css" />
</head>
<body>
<a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment" class="top-bar" target="_blank" rel="noopener" aria-label="Contact FixHive on WhatsApp">
  <span class="top-bar-icon">&#x1F4AC;</span>
  <span class="top-bar-text"><strong>Free Diagnostic Check</strong> — WhatsApp us your car problem now</span>
  <span class="top-bar-cta">Chat Now &#x2192;</span>
</a>
$NAV
<section class="page-hero">
  <div class="breadcrumb"><a href="index.html">Home</a> &#x203A; <a href="brands.html">Brands</a> &#x203A; $($b.name) Repair Dubai</div>
  <h1>$($b.name) Repair &amp; Service in Dubai</h1>
  <p>$($b.heroSub)</p>
</section>

<div class="page-content">
  <div class="brand-hero-logo">
    <img src="images/logos/$($b.slug).png" alt="$($b.name) logo" onerror="this.style.display='none'" />
    <div>
      <h2 style="margin:0 0 0.3rem;font-size:1.5rem;color:#0a2463;">$($b.name) Specialists in Dubai</h2>
      <p style="margin:0;color:#6b7280;font-size:0.93rem;">$($b.models)</p>
    </div>
  </div>

  <div class="intro-text">
    <p>$($b.intro1)</p>
    <p>$($b.intro2)</p>
    <p>$($b.intro3)</p>
  </div>

  <h2 class="section-title">Common $($b.name) Issues in Dubai</h2>
  <div class="issues-grid">
    <div class="issue-item">
      <h3>&#x26A0;&#xFE0F; $($b.i1h)</h3>
      <p>$($b.i1p)</p>
    </div>
    <div class="issue-item">
      <h3>&#x26A0;&#xFE0F; $($b.i2h)</h3>
      <p>$($b.i2p)</p>
    </div>
    <div class="issue-item">
      <h3>&#x26A0;&#xFE0F; $($b.i3h)</h3>
      <p>$($b.i3p)</p>
    </div>
    <div class="issue-item">
      <h3>&#x26A0;&#xFE0F; $($b.i4h)</h3>
      <p>$($b.i4p)</p>
    </div>
  </div>

  <h2 class="section-title">Our $($b.name) Services in Dubai</h2>
  <div class="brand-svc-grid">
$SVC_TILES_EN
  </div>
  <p class="svc-tile-note">All $($b.name) services performed by trained technicians using manufacturer-specified fluids and OEM-equivalent parts. Minor services from AED 300.</p>
</div>

<section class="faq-section">
  <div style="max-width:1100px;margin:0 auto;">
    <h2 class="section-title">$($b.name) Repair Dubai — FAQ</h2>
    <div class="faq-list">
      <div class="faq-item"><button class="faq-q">$($b.faq1q)</button><div class="faq-a"><p>$($b.faq1a)</p></div></div>
      <div class="faq-item"><button class="faq-q">$($b.faq2q)</button><div class="faq-a"><p>$($b.faq2a)</p></div></div>
      <div class="faq-item"><button class="faq-q">$($b.faq3q)</button><div class="faq-a"><p>$($b.faq3a)</p></div></div>
      <div class="faq-item"><button class="faq-q">$($b.faq4q)</button><div class="faq-a"><p>$($b.faq4a)</p></div></div>
      <div class="faq-item"><button class="faq-q">$($b.faq5q)</button><div class="faq-a"><p>$($b.faq5a)</p></div></div>
    </div>
  </div>
</section>

<section style="padding:40px 5%;background:#fff;max-width:1100px;margin:0 auto;">
  <h2 class="section-title" style="margin-bottom:1rem;">We Also Specialise In</h2>
  <div style="display:flex;flex-wrap:wrap;gap:0.6rem;">
    $($b.relatedEn)
  </div>
</section>

<section class="page-cta">
  <h2>Book Your $($b.name) Service in Dubai Today</h2>
  <p>$($b.ctaSub)</p>
  <a href="https://wa.me/971541699500?text=$($b.waMsg)" class="btn-primary" style="background:#f5a623;color:#0a2463;padding:0.85rem 2rem;border-radius:30px;font-weight:700;text-decoration:none;font-size:1rem;">&#x1F4F2; WhatsApp to Book</a>
</section>

$FOOTER
<script>document.querySelectorAll('.faq-q').forEach(function(btn){btn.addEventListener('click',function(){var item=this.closest('.faq-item');var wasOpen=item.classList.contains('open');document.querySelectorAll('.faq-item').forEach(function(i){i.classList.remove('open');});if(!wasOpen)item.classList.add('open');});});</script>
<script src="chatbot.js" defer></script>
<script src="/js/nav.js" defer></script>
<script src="/js/search.js" defer></script>
</body>
</html>
"@
}

function New-ARPage($b) {
$enLink = "  <a href=`"../$($b.slug)-repair-dubai.html`" class=`"nav-lang`">&#x1F1EC;&#x1F1E7; EN</a>"
$navAr = $NAV_AR -replace 'ENLINKPLACEHOLDER', $enLink
return @"
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-819HFHM37T"></script>
    <script>window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments);}gtag('js',new Date());gtag('config','G-819HFHM37T');</script>
  <meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>$($b.titleAr)</title>
  <meta name="description" content="$($b.descAr)" />
  <meta name="robots" content="index, follow" />
  <link rel="canonical" href="https://myfixhive.ae/ar/$($b.slug)-repair-dubai.html" />
  <meta name="geo.position" content="24.972111;55.1737988">
  <meta name="geo.region" content="AE-DU">
  <meta name="geo.placename" content="Dubai">
  <link rel="alternate" hreflang="en-AE" href="https://myfixhive.ae/$($b.slug)-repair-dubai.html" />
  <link rel="alternate" hreflang="ar-AE" href="https://myfixhive.ae/ar/$($b.slug)-repair-dubai.html" />
  <link rel="alternate" hreflang="x-default" href="https://myfixhive.ae/$($b.slug)-repair-dubai.html" />
  <meta property="og:type" content="website" /><meta property="og:url" content="https://myfixhive.ae/ar/$($b.slug)-repair-dubai.html" />
  <meta property="og:title" content="$($b.titleAr)" />
  <meta property="og:description" content="$($b.descAr)" />
  <meta property="og:image" content="https://myfixhive.ae/images/og-fixhive.jpg" />
  <meta property="og:locale" content="ar_AE" />
  <link rel="stylesheet" href="../shared.css" />
$CSS_STYLES_AR
  <link rel="stylesheet" href="../chatbot.css" />
</head>
<body>
<a href="https://wa.me/971541699500?text=مرحبًا%2C%20رأيت%20موقعكم%20وأريد%20حجز%20موعد" class="top-bar" target="_blank" rel="noopener" aria-label="تواصل مع فيكس هايف عبر واتساب">
  <span class="top-bar-icon">&#x1F4AC;</span>
  <span class="top-bar-text"><strong>فحص تشخيصي مجاني</strong> — أرسل لنا مشكلة سيارتك الآن عبر واتساب</span>
  <span class="top-bar-cta">تحدث الآن &#x2192;</span>
</a>
$navAr
<section class="page-hero">
  <div class="breadcrumb"><a href="../index.html">الرئيسية</a> &#x203A; <a href="../brands.html">الماركات</a> &#x203A; إصلاح $($b.name) دبي</div>
  <h1>إصلاح وصيانة $($b.name) في دبي</h1>
  <p>$($b.heroSubAr)</p>
</section>

<div class="page-content">
  <div class="brand-hero-logo">
    <img src="../images/logos/$($b.slug).png" alt="شعار $($b.name)" onerror="this.style.display='none'" />
    <div>
      <h2 style="margin:0 0 0.3rem;font-size:1.5rem;color:#0a2463;">متخصصو $($b.name) في دبي</h2>
      <p style="margin:0;color:#6b7280;font-size:0.93rem;">$($b.models)</p>
    </div>
  </div>

  <div class="intro-text">
    <p>$($b.intro1Ar)</p>
    <p>$($b.intro2Ar)</p>
    <p>$($b.intro3Ar)</p>
  </div>

  <h2 class="section-title" style="color:#1e3a8a;">أبرز أعطال $($b.name) في دبي</h2>
  <div class="issues-grid">
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; $($b.i1hAr)</h3><p>$($b.i1pAr)</p></div>
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; $($b.i2hAr)</h3><p>$($b.i2pAr)</p></div>
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; $($b.i3hAr)</h3><p>$($b.i3pAr)</p></div>
    <div class="issue-item"><h3>&#x26A0;&#xFE0F; $($b.i4hAr)</h3><p>$($b.i4pAr)</p></div>
  </div>

  <h2 class="section-title" style="color:#1e3a8a;">خدمات $($b.name) في دبي</h2>
  <div class="brand-svc-grid">
$SVC_TILES_AR
  </div>
  <p class="svc-tile-note">جميع خدمات $($b.name) تُنفَّذ بمعايير المصنع. الصيانة الخفيفة تبدأ من 300 درهم.</p>
</div>

<section class="faq-section">
  <div style="max-width:1100px;margin:0 auto;">
    <h2 class="section-title" style="color:#1e3a8a;">الأسئلة الشائعة — إصلاح $($b.name) دبي</h2>
    <div class="faq-list">
      <div class="faq-item"><button class="faq-q">$($b.faq1qAr)</button><div class="faq-a"><p>$($b.faq1aAr)</p></div></div>
      <div class="faq-item"><button class="faq-q">$($b.faq2qAr)</button><div class="faq-a"><p>$($b.faq2aAr)</p></div></div>
      <div class="faq-item"><button class="faq-q">$($b.faq3qAr)</button><div class="faq-a"><p>$($b.faq3aAr)</p></div></div>
      <div class="faq-item"><button class="faq-q">$($b.faq4qAr)</button><div class="faq-a"><p>$($b.faq4aAr)</p></div></div>
      <div class="faq-item"><button class="faq-q">$($b.faq5qAr)</button><div class="faq-a"><p>$($b.faq5aAr)</p></div></div>
    </div>
  </div>
</section>

<section class="page-cta">
  <h2>احجز صيانة $($b.name) في دبي اليوم</h2>
  <p>$($b.ctaSubAr)</p>
  <a href="https://wa.me/971541699500?text=مرحبًا%2C%20رأيت%20موقعكم%20وأريد%20حجز%20موعد%20لصيانة%20$($b.name)" class="btn-primary" style="background:#f5a623;color:#0a2463;padding:0.85rem 2rem;border-radius:30px;font-weight:700;text-decoration:none;font-size:1rem;">&#x1F4F2; احجز عبر واتساب</a>
</section>

$FOOTER_AR
<script>document.querySelectorAll('.faq-q').forEach(function(btn){btn.addEventListener('click',function(){var item=this.closest('.faq-item');var wasOpen=item.classList.contains('open');document.querySelectorAll('.faq-item').forEach(function(i){i.classList.remove('open');});if(!wasOpen)item.classList.add('open');});});</script>
<script src="../chatbot.js" defer></script>
<script src="/js/nav.js" defer></script>
</body>
</html>
"@
}

# Write the first 3 brands
foreach ($b in $brands) {
  $enPath = Join-Path $base "$($b.slug)-repair-dubai.html"
  $arPath = Join-Path $base "ar\$($b.slug)-repair-dubai.html"
  $en = New-ENPage $b
  $ar = New-ARPage $b
  [System.IO.File]::WriteAllText($enPath, $en, [System.Text.Encoding]::UTF8)
  [System.IO.File]::WriteAllText($arPath, $ar, [System.Text.Encoding]::UTF8)
  Write-Host "Created: $($b.slug)"
}
Write-Host "Part 1 done (3 brands). Run gen-brands-2.ps1 for remaining brands."
