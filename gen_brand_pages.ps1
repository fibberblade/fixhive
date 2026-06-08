# Brand page generator
$brands = @(
  @{name="Aston Martin"; slug="aston-martin"; models="DB11, Vantage, DBX, DBS & Vanquish"; subtitle="DB11 · Vantage · DBX · DBS · Vanquish"; hero="Aston Martin Repair &amp; Service in Dubai"; heroSub="Dubai's specialist for Aston Martin DB11, Vantage, DBX, DBS and Vanquish. Hand-built British performance cars maintained to factory standards in Dubai Investment Park."; category="luxury"},
  @{name="Bentley"; slug="bentley"; models="Mulsanne, Continental GT, Flying Spur & Bentayga"; subtitle="Mulsanne · Continental GT · Flying Spur · Bentayga"; hero="Bentley Repair &amp; Service in Dubai"; heroSub="Expert care for Bentley Mulsanne, Continental GT, Flying Spur and Bentayga in Dubai. Handcrafted W12 and V8 engines, air suspension and bespoke interior support."; category="luxury"},
  @{name="BYD"; slug="byd"; models="Atto 3, Han, Seal, Tang & Dolphin"; subtitle="Atto 3 · Han · Seal · Tang · Dolphin"; hero="BYD Repair &amp; Service in Dubai"; heroSub="Specialist BYD electric and hybrid vehicle service in Dubai. Atto 3, Han EV, Seal, Tang PHEV and Dolphin — battery management, software updates and drivetrain care."; category="chinese"},
  @{name="Cadillac"; slug="cadillac"; models="Escalade, CT5, XT5, XT6 & CT4"; subtitle="Escalade · CT5 · XT5 · XT6 · CT4"; hero="Cadillac Repair &amp; Service in Dubai"; heroSub="Cadillac specialist in Dubai servicing Escalade, CT5, XT5, XT6 and CT4. V8 engine care, Magnetic Ride Control and advanced driver assistance system support."; category="american"},
  @{name="Changan"; slug="changan"; models="CS35 Plus, CS75 Plus, Uni-T, Uni-K & Hunter"; subtitle="CS35 Plus · CS75 Plus · Uni-T · Uni-K · Hunter"; hero="Changan Repair &amp; Service in Dubai"; heroSub="Changan service centre in Dubai for CS35 Plus, CS75 Plus, Uni-T, Uni-K and Hunter. Warranty-compliant servicing, software calibration and spare parts support."; category="chinese"},
  @{name="Chery"; slug="chery"; models="Tiggo 4, Tiggo 7, Tiggo 8, Arrizo 5 & Omoda"; subtitle="Tiggo 4 · Tiggo 7 · Tiggo 8 · Arrizo 5 · Omoda"; hero="Chery Repair &amp; Service in Dubai"; heroSub="Chery specialist in Dubai for Tiggo 4, Tiggo 7 Pro, Tiggo 8, Arrizo 5 and Omoda 5. Turbocharged engine service, CVT maintenance and genuine parts supply."; category="chinese"},
  @{name="Chevrolet"; slug="chevrolet"; models="Tahoe, Suburban, Traverse, Malibu, Blazer & Camaro"; subtitle="Tahoe · Suburban · Traverse · Malibu · Blazer · Camaro"; hero="Chevrolet Repair &amp; Service in Dubai"; heroSub="Chevrolet specialist in Dubai covering Tahoe, Suburban, Traverse, Malibu, Blazer and Camaro. V8 engine service, 10-speed automatic transmission and AFM system care."; category="american"},
  @{name="Chrysler"; slug="chrysler"; models="300, 300C, Pacifica & Grand Voyager"; subtitle="300 · 300C · Pacifica · Grand Voyager"; hero="Chrysler Repair &amp; Service in Dubai"; heroSub="Chrysler repair specialist in Dubai for the 300, 300C, Pacifica and Grand Voyager. HEMI V8 engine service, ZF 8-speed transmission and air suspension maintenance."; category="american"},
  @{name="Dodge"; slug="dodge"; models="Charger, Challenger, Durango, Journey & RAM 1500"; subtitle="Charger · Challenger · Durango · Journey"; hero="Dodge Repair &amp; Service in Dubai"; heroSub="Dodge specialist in Dubai for Charger, Challenger, Durango and Journey. HEMI V8 and supercharged Hellcat engine service, transmission care and performance diagnostics."; category="american"},
  @{name="Ferrari"; slug="ferrari"; models="Roma, Portofino M, SF90, F8 Tributo & 296 GTB"; subtitle="Roma · Portofino M · SF90 · F8 Tributo · 296 GTB"; hero="Ferrari Repair &amp; Service in Dubai"; heroSub="Authorised-standard Ferrari care in Dubai for Roma, Portofino M, SF90 Stradale, F8 Tributo and 296 GTB. Prancing Horse expertise with rare parts sourcing and value preservation."; category="luxury"},
  @{name="GAC"; slug="gac"; models="GS3, GS4, GS8, GA4 & Emkoo"; subtitle="GS3 · GS4 · GS8 · GA4 · Emkoo"; hero="GAC Repair &amp; Service in Dubai"; heroSub="GAC service specialist in Dubai covering GS3, GS4, GS8, GA4 and Emkoo. Turbocharged engine maintenance, DCT servicing and OBD diagnostics for all current models."; category="chinese"},
  @{name="Geely"; slug="geely"; models="Coolray, Okavango, Tugella, Emgrand & Geometry"; subtitle="Coolray · Okavango · Tugella · Emgrand"; hero="Geely Repair &amp; Service in Dubai"; heroSub="Geely specialist in Dubai for Coolray, Okavango, Tugella, Emgrand and Geometry EV. Turbocharged engine service, dual-clutch transmission and battery system care."; category="chinese"},
  @{name="GMC"; slug="gmc"; models="Yukon, Sierra, Terrain, Acadia & Canyon"; subtitle="Yukon · Sierra · Terrain · Acadia · Canyon"; hero="GMC Repair &amp; Service in Dubai"; heroSub="GMC specialist in Dubai for Yukon, Sierra, Terrain, Acadia and Canyon. 5.3L and 6.2L EcoTec3 V8 service, 10-speed automatic transmission and MagneRide care."; category="american"},
  @{name="Haval"; slug="haval"; models="H6, Jolion, H2, H9 & Raptor"; subtitle="H6 · Jolion · H2 · H9 · Raptor"; hero="Haval Repair &amp; Service in Dubai"; heroSub="Haval service specialist in Dubai for H6, Jolion, H2, H9 and Raptor. Turbocharged GW4C engine service, 7-speed DCT and 4WD system maintenance."; category="chinese"},
  @{name="HongQi"; slug="hongqi"; models="H9, H5, E-HS9, HS5 & HS7"; subtitle="H9 · H5 · E-HS9 · HS5 · HS7"; hero="HongQi Repair &amp; Service in Dubai"; heroSub="HongQi specialist in Dubai for H9, H5, E-HS9, HS5 and HS7. China's prestige brand serviced with factory-level care — EV battery management, air suspension and bespoke diagnostics."; category="chinese"},
  @{name="Jeep"; slug="jeep"; models="Grand Cherokee, Wrangler, Compass, Cherokee & Renegade"; subtitle="Grand Cherokee · Wrangler · Compass · Cherokee"; hero="Jeep Repair &amp; Service in Dubai"; heroSub="Jeep specialist in Dubai for Grand Cherokee, Wrangler, Compass, Cherokee and Renegade. 4x4 system servicing, Pentastar V6 and EcoDiesel engine care for UAE terrain."; category="american"},
  @{name="Jetour"; slug="jetour"; models="X70, X90 Plus, Dashing, T2 & X70 Plus"; subtitle="X70 · X90 Plus · Dashing · T2"; hero="Jetour Repair &amp; Service in Dubai"; heroSub="Jetour service specialist in Dubai for X70, X90 Plus, Dashing and T2. Turbocharged engine maintenance, CVT and DCT servicing with OEM parts and software updates."; category="chinese"},
  @{name="Lamborghini"; slug="lamborghini"; models="Huracan, Urus, Revuelto & Sterrato"; subtitle="Huracan · Urus · Revuelto · Sterrato"; hero="Lamborghini Repair &amp; Service in Dubai"; heroSub="Specialist Lamborghini care in Dubai for Huracan, Urus, Revuelto and Sterrato. Naturally aspirated V10 and V12 expertise, twin-turbo V8 Urus service and rare parts sourcing."; category="luxury"},
  @{name="Lincoln"; slug="lincoln"; models="Navigator, Aviator, Corsair, Nautilus & Continental"; subtitle="Navigator · Aviator · Corsair · Nautilus"; hero="Lincoln Repair &amp; Service in Dubai"; heroSub="Lincoln specialist in Dubai for Navigator, Aviator, Corsair and Nautilus. EcoBoost V6 and twin-turbocharged V6 service, air suspension care and SYNC 4 diagnostics."; category="american"},
  @{name="Maserati"; slug="maserati"; models="Ghibli, Quattroporte, Levante, Grecale & GranTurismo"; subtitle="Ghibli · Quattroporte · Levante · Grecale"; hero="Maserati Repair &amp; Service in Dubai"; heroSub="Maserati specialist in Dubai for Ghibli, Quattroporte, Levante, Grecale and GranTurismo. Ferrari-derived twin-turbo V6 and V8 care, ZF transmission and air suspension support."; category="luxury"},
  @{name="Maybach"; slug="maybach"; models="Maybach S-Class, GLS 600 & EQS 680"; subtitle="S-Class Maybach · GLS 600 · EQS 680"; hero="Mercedes-Maybach Repair &amp; Service in Dubai"; heroSub="Mercedes-Maybach specialist in Dubai for S 580, S 680, GLS 600 Maybach and EQS 680. Ultra-luxury V12, V8 and EQ powertrain expertise with white-glove service standards."; category="luxury"},
  @{name="MG"; slug="mg"; models="ZS, HS, RX5, MG5, MG6 & Marvel R"; subtitle="ZS · HS · RX5 · MG5 · Marvel R"; hero="MG Repair &amp; Service in Dubai"; heroSub="MG specialist in Dubai for ZS, HS, RX5, MG5, MG6 and Marvel R EV. Turbocharged 1.5T and 2.0T engine service, CVT maintenance and EV battery system care."; category="chinese"},
  @{name="RAM"; slug="ram"; models="1500, 2500, 3500 & ProMaster"; subtitle="RAM 1500 · 2500 · 3500 · ProMaster"; hero="RAM Truck Repair &amp; Service in Dubai"; heroSub="RAM truck specialist in Dubai for 1500, 2500, 3500 and ProMaster. HEMI V8, Cummins diesel and EcoDiesel engine service, air suspension and towing system care."; category="american"},
  @{name="Rolls-Royce"; slug="rolls-royce"; models="Phantom, Ghost, Cullinan, Spectre & Wraith"; subtitle="Phantom · Ghost · Cullinan · Spectre · Wraith"; hero="Rolls-Royce Repair &amp; Service in Dubai"; heroSub="White-glove Rolls-Royce care in Dubai for Phantom, Ghost, Cullinan, Spectre and Wraith. Twin-turbo V12 expertise, air suspension precision and bespoke Bespoke panel care."; category="luxury"}
)

# Nav HTML from subaru template (copy verbatim)
$navEN = @'
<nav>
  <a href="index.html" class="logo"><img src="img/logo.webp" alt="FixHive Garage Dubai" /></a>
  <ul>
    <li class="has-dropdown"><a href="about.html" class="nav-packages-link">About</a><ul class="nav-dropdown"><li><a href="about.html#values">Our Values</a></li><li><a href="about.html#history">How We Got Here</a></li><li><a href="about.html#why-fixhive">Why Choose FixHive</a></li><li><a href="about.html#social">Stay Connected</a></li></ul></li>
    <li class="has-dropdown"><a href="services.html" class="nav-packages-link">Services</a><ul class="nav-dropdown"><li><a href="ac-service.html">AC &amp; Cooling</a></li><li><a href="engine.html">Engine &amp; Transmission</a></li><li><a href="brakes.html">Brakes &amp; Suspension</a></li><li><a href="tyres.html">Tyres &amp; Wheels</a></li><li><a href="body.html">Body &amp; Exterior</a></li><li><a href="electrical.html">Battery &amp; Electrical</a></li><li><a href="hybrid-ev.html">Hybrid &amp; EV</a></li><li><a href="pre-purchase-inspection.html">Pre-Purchase Inspection</a></li><li><a href="service-packages.html">Service Packages</a></li><li><a href="detailing.html">Detailing &amp; Protection</a></li><li><a href="gearbox.html">Gearbox &amp; Drivetrain</a></li><li><a href="diagnostics.html">Advanced Diagnostics</a></li></ul></li>
    <li><a href="diagnosis.html" class="nav-packages-link">Self Diagnosis</a></li>
    <li class="has-dropdown"><a href="brands.html" class="nav-packages-link">Brands</a><ul class="nav-mega"><li><a href="alfa-romeo-repair-dubai.html">Alfa Romeo</a></li><li><a href="aston-martin-repair-dubai.html">Aston Martin</a></li><li><a href="audi-repair-dubai.html">Audi</a></li><li><a href="bentley-repair-dubai.html">Bentley</a></li><li><a href="bmw-repair-dubai.html">BMW</a></li><li><a href="byd-repair-dubai.html">BYD</a></li><li><a href="cadillac-repair-dubai.html">Cadillac</a></li><li><a href="changan-repair-dubai.html">Changan</a></li><li><a href="chery-repair-dubai.html">Chery</a></li><li><a href="chevrolet-repair-dubai.html">Chevrolet</a></li><li><a href="chrysler-repair-dubai.html">Chrysler</a></li><li><a href="daihatsu-repair-dubai.html">Daihatsu</a></li><li><a href="dodge-repair-dubai.html">Dodge</a></li><li><a href="ferrari-repair-dubai.html">Ferrari</a></li><li><a href="fiat-repair-dubai.html">Fiat</a></li><li><a href="ford-repair-dubai.html">Ford</a></li><li><a href="gac-repair-dubai.html">GAC</a></li><li><a href="geely-repair-dubai.html">Geely</a></li><li><a href="genesis-repair-dubai.html">Genesis</a></li><li><a href="gmc-repair-dubai.html">GMC</a></li><li><a href="haval-repair-dubai.html">Haval</a></li><li><a href="honda-repair-dubai.html">Honda</a></li><li><a href="hongqi-repair-dubai.html">HongQi</a></li><li><a href="hyundai-repair-dubai.html">Hyundai</a></li><li><a href="infiniti-repair-dubai.html">Infiniti</a></li><li><a href="isuzu-repair-dubai.html">Isuzu</a></li><li><a href="jaguar-repair-dubai.html">Jaguar</a></li><li><a href="jeep-repair-dubai.html">Jeep</a></li><li><a href="jetour-repair-dubai.html">Jetour</a></li><li><a href="kia-repair-dubai.html">Kia</a></li><li><a href="lamborghini-repair-dubai.html">Lamborghini</a></li><li><a href="land-rover-repair-dubai.html">Land Rover</a></li><li><a href="lexus-repair-dubai.html">Lexus</a></li><li><a href="lincoln-repair-dubai.html">Lincoln</a></li><li><a href="maserati-repair-dubai.html">Maserati</a></li><li><a href="maybach-repair-dubai.html">Maybach</a></li><li><a href="mazda-repair-dubai.html">Mazda</a></li><li><a href="mercedes-benz-repair-dubai.html">Mercedes-Benz</a></li><li><a href="mg-repair-dubai.html">MG</a></li><li><a href="mini-repair-dubai.html">MINI</a></li><li><a href="mitsubishi-repair-dubai.html">Mitsubishi</a></li><li><a href="nissan-repair-dubai.html">Nissan</a></li><li><a href="peugeot-repair-dubai.html">Peugeot</a></li><li><a href="porsche-repair-dubai.html">Porsche</a></li><li><a href="ram-repair-dubai.html">RAM</a></li><li><a href="land-rover-repair-dubai.html">Range Rover</a></li><li><a href="renault-repair-dubai.html">Renault</a></li><li><a href="rolls-royce-repair-dubai.html">Rolls-Royce</a></li><li><a href="subaru-repair-dubai.html">Subaru</a></li><li><a href="suzuki-repair-dubai.html">Suzuki</a></li><li><a href="tesla-repair-dubai.html">Tesla</a></li><li><a href="toyota-repair-dubai.html">Toyota</a></li><li><a href="volkswagen-repair-dubai.html">Volkswagen</a></li><li><a href="volvo-repair-dubai.html">Volvo</a></li><li class="nav-mega-footer"><a href="brands.html">All Brands</a></li></ul></li>
    <li class="has-dropdown"><a href="service-packages.html" class="nav-packages-link">Packages</a><ul class="nav-dropdown"><li><a href="service-packages.html#fixcare">FixCare</a></li><li><a href="service-packages.html#fixprime">FixPrime</a></li><li><a href="service-packages.html#fixelite">FixElite</a></li></ul></li>
    <li><a href="offers.html" class="nav-offers-link">🔥 Offers</a></li>
    <li><a href="contact.html" class="nav-packages-link">Contact</a></li>
    <li class="has-dropdown"><a href="#" class="nav-packages-link">More</a><ul class="nav-dropdown"><li><a href="faq.html">FAQ</a></li><li><a href="blogs.html">Blog</a></li><li><a href="gallery.html">Gallery</a></li></ul></li>
  </ul>
  <div class="nav-search" id="navSearch"><button class="nav-search-toggle" onclick="var ns=this.parentNode;ns.classList.toggle('open');if(ns.classList.contains('open')){var i=document.getElementById('navSearchInput');i&&i.focus()}" aria-label="Search"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg></button><div class="nav-search-drop"><input type="text" id="navSearchInput" placeholder="Search FixHive&#8230;" autocomplete="off" aria-label="Search FixHive"><div class="nav-search-results" id="navSearchResults"></div></div></div>
  <a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment" class="nav-cta">Book Now</a>
  <a href="ar/index.html" class="nav-lang">🇦🇪 AR</a>
  <button class="nav-hamburger" onclick="document.getElementById('mobileMenu').classList.toggle('open')" aria-label="Menu"><span></span><span></span><span></span></button>
</nav>
'@

function Get-BrandContent {
  param($b)
  $name = $b.name
  $slug = $b.slug
  $cat = $b.category

  # Generate intro paragraphs based on category
  if ($cat -eq "luxury") {
    $intro = @"
    <p>$name occupies a rarefied position in the Dubai automotive world. As one of the most exclusive marques on UAE roads, $name vehicles require a level of technical expertise and discretion that very few workshops can genuinely offer. At FixHive, we have invested in the diagnostic equipment, training and parts relationships necessary to service these exceptional cars properly — giving owners a credible alternative to franchised dealer servicing without sacrificing quality.</p>
    <p>Dubai is one of the world's most important markets for $name, and the city's roads contain a significant concentration of the global fleet. The combination of extreme ambient temperatures, year-round air conditioning use and high-speed motorway driving creates a specific set of demands on these vehicles that differs considerably from service requirements in Europe or the United States. Our technicians understand these UAE-specific challenges intimately.</p>
    <p>For owners of $name vehicles, maintaining manufacturer service records and using the correct specification fluids and parts is not merely about reliability — it has a direct and significant impact on residual value. A $name in Dubai with a full, documented service history retains considerably more value than an identical car with gaps or off-specification work. FixHive provides fully itemised service records and uses genuine or OEM-equivalent parts for every job, protecting both your car and its long-term value.</p>
    <p>We source parts through established channels with full traceability, and we carry commonly required consumables in stock to minimise your car's time off the road. For specialist components, we work with authorised parts distributors in the UAE and Europe to ensure lead times are as short as possible. Our workshop in Dubai Investment Park is equipped to handle everything from routine servicing to complex mechanical and electrical diagnosis on $name vehicles.</p>
"@
  } elseif ($cat -eq "chinese") {
    $intro = @"
    <p>$name has established a strong and growing presence in the UAE market, and Dubai roads now carry a significant number of $name vehicles across all model lines. As these cars age beyond their initial warranty periods, owners increasingly look for qualified independent specialists who understand the technology, software and parts requirements of Chinese-engineered vehicles — and FixHive has positioned itself as exactly that resource in Dubai.</p>
    <p>Chinese automotive brands have undergone a remarkable technological transformation over the past decade. Modern $name vehicles incorporate sophisticated turbocharged engines, dual-clutch and CVT transmissions, advanced driver assistance systems, and in many cases full electric or hybrid powertrains. These are not simple vehicles to service correctly, and the quality of the outcome depends heavily on having the right diagnostic software and genuine or quality-matched replacement parts.</p>
    <p>One of the specific challenges $name owners face in Dubai is software and calibration updates. Chinese manufacturers issue OTA and dealer-applied updates frequently, and some of these updates address drivability concerns, transmission calibration issues or ADAS sensor alignment. FixHive carries diagnostic equipment that interfaces with $name vehicle networks, allowing us to read fault codes, perform adaptations and carry out calibration procedures to the same standard as an authorised workshop.</p>
    <p>The UAE climate presents specific maintenance demands for $name vehicles. Stop-start city driving in summer temperatures exceeding 45°C places the cooling system, transmission and battery systems under continuous stress. We recommend shorter service intervals for UAE-driven $name vehicles compared to global specifications, and our service team will advise on the appropriate schedule for your specific model and usage pattern at your first visit.</p>
"@
  } else {
    # american
    $intro = @"
    <p>$name has long been a staple of Dubai roads, prized for its combination of powerful engines, spacious interiors and the particular character that comes from American automotive engineering. Whether it is the authority of a full-size SUV, the performance of a sports model or the utility of a truck platform, $name vehicles occupy a distinct and loyal segment of the Dubai market — and they require service from technicians who genuinely understand their engineering.</p>
    <p>American vehicles sold in the UAE are generally specification-matched to Gulf market conditions, but they still face specific challenges in Dubai's climate. Large-displacement V8 engines and heavy-duty transmissions generate considerable heat in stop-start urban traffic, and the air conditioning systems work continuously at high load for seven to eight months of the year. Without attention to cooling system maintenance and transmission fluid quality, the components that make these vehicles rewarding to drive can wear prematurely.</p>
    <p>The UAE market versions of most $name models are built to handle the heat, but they perform best when service intervals are adapted to local conditions rather than global factory recommendations. Engine oil quality degrades faster at 45°C+ ambient temperatures, transmission fluids oxidise more rapidly, and air filter media clogs more quickly due to Dubai's dusty environment. FixHive adapts its $name service intervals to reflect these realities, protecting your investment over the long term.</p>
    <p>We use OBD-II and manufacturer-specific diagnostic protocols to read all fault codes across $name vehicle systems — engine, transmission, ABS, airbag, ADAS and infotainment — and our technicians are trained on the common failure modes for current $name models in UAE conditions. From routine oil changes to complex engine and transmission work, FixHive provides the full range of $name services in Dubai at a significant saving compared to franchised dealer rates.</p>
"@
  }

  # Generate 4 issues based on category
  if ($cat -eq "luxury") {
    $issues = @"
    <div class="issue-item">
      <h3>⚠️ Air Suspension Compressor Wear in Dubai Heat</h3>
      <p>Many $name models use electronically controlled air suspension systems that deliver an exceptionally smooth ride — but the compressors and air bags are sensitive to heat and to contamination from the fine desert dust that permeates Dubai's air. The compressor motor works continuously to maintain the correct ride height and damping profile, and in ambient temperatures above 40°C it runs significantly hotter than the system was designed for in European conditions. Symptoms of early compressor wear include a settling sound when the car is parked overnight, a noticeable drop in ride height at one or more corners, and an increased compressor run time. Catching compressor wear early prevents the far more expensive failure of the air bags themselves. FixHive carries air suspension diagnostic equipment and holds commonly required $name suspension components in stock.</p>
    </div>
    <div class="issue-item">
      <h3>⚠️ Complex Electronics and Infotainment Failures</h3>
      <p>Modern $name vehicles carry an extraordinary density of electronics — from the powertrain control modules and active chassis systems to the bespoke infotainment platforms and ADAS sensors. In Dubai's climate, the thermal cycling between the extreme outdoor heat and the intense air conditioning used inside the car can accelerate connector and solder joint fatigue in the vehicle's electronic control units. Software glitches, sensor faults and module communication errors are among the most frequently reported issues we see. Diagnosing these correctly requires manufacturer-level diagnostic software rather than a generic OBD reader, and FixHive has invested in exactly this capability for $name vehicles.</p>
    </div>
    <div class="issue-item">
      <h3>⚠️ Engine Cooling System Maintenance at High Ambient Temperatures</h3>
      <p>The powerful engines that define the $name driving experience — whether turbocharged V8s, V12s or large-displacement naturally aspirated units — generate significant heat loads that are amplified by Dubai's 45°C+ ambient temperatures. Coolant chemistry degrades more rapidly than factory service intervals assume for these conditions, and the rubber components in the cooling circuit — hoses, seals and the thermostat housing — are exposed to continuous thermal stress. We recommend coolant replacement and a full cooling system pressure test every two years for Dubai-driven $name vehicles, along with inspection of all rubber cooling circuit components. Addressing a leaking hose or a weak thermostat costs a fraction of the price of dealing with the overheating damage it prevents.</p>
    </div>
    <div class="issue-item">
      <h3>⚠️ Brake System Service and Pad Glazing</h3>
      <p>$name vehicles with large, high-performance brake systems are particularly susceptible to a specific Dubai phenomenon: pad glazing caused by the combination of very high initial operating temperatures followed by rapid cooling when the car enters a garage or car park with air conditioning. This thermal cycling causes the brake pad material to vitrify on its surface, reducing friction coefficient and creating a characteristic judder or vibration under braking. The issue is compounded by the tendency of Dubai drivers to apply the brakes hard from motorway speeds and then come to a complete stop. FixHive recommends inspection of brake pad surface condition at every service, and we carry $name-compatible brake pads designed to handle the thermal demands of the UAE environment.</p>
    </div>
"@
  } elseif ($cat -eq "chinese") {
    $issues = @"
    <div class="issue-item">
      <h3>⚠️ Turbocharged Engine Carbon Build-Up in UAE Conditions</h3>
      <p>Most current $name models use direct-injection turbocharged engines that deliver impressive performance from compact displacements. The direct injection system, while efficient, bypasses the intake valves with fuel — meaning the detergent effect that port injection provides is absent. In Dubai's hot climate with frequent short journeys and significant urban idling, carbon deposits accumulate on the intake valves more rapidly than in cooler, more varied driving conditions. Symptoms include rough idle, hesitation on acceleration, reduced fuel economy and occasional misfires. FixHive offers intake valve cleaning services using both walnut blasting and chemical treatments suited to $name engines, preventing the performance degradation that untreated carbon deposits cause.</p>
    </div>
    <div class="issue-item">
      <h3>⚠️ DCT/CVT Transmission Calibration Issues</h3>
      <p>Several $name models use dual-clutch transmissions (DCT) or CVT units that rely on precise hydraulic calibration and learning adaptations to deliver smooth gearchanges. In Dubai's climate, transmission fluid degrades faster than global service intervals account for, which can cause the clutch engagement points to drift and produce shudder, judder or hesitation — particularly on low-speed manoeuvres. Additionally, some $name DCT units are known to benefit from software recalibration updates issued by the manufacturer that address shift quality. FixHive has diagnostic access to $name transmission systems and can perform both fluid services and software adaptations to restore correct operation.</p>
    </div>
    <div class="issue-item">
      <h3>⚠️ Cooling System Stress in Stop-Start Dubai Traffic</h3>
      <p>$name engines are generally well-cooled under normal operating conditions, but Dubai's combination of extreme ambient heat and prolonged stop-start traffic in summer months pushes cooling systems beyond their design envelope. The electric cooling fans work continuously, the coolant temperature climbs into the upper range of normal operation, and the coolant itself ages faster. In mild cases, owners notice the temperature gauge sitting higher in traffic than it does on motorways. In more serious cases, the thermostat fails to open correctly or the cooling fan relay develops a fault, leading to a rapid temperature spike. FixHive checks coolant condition, thermostat operation and cooling fan function at every $name service.</p>
    </div>
    <div class="issue-item">
      <h3>⚠️ Air Conditioning System Performance Decline</h3>
      <p>In Dubai, the air conditioning system in a $name operates at near-maximum capacity for seven to eight months of the year. The refrigerant charge, compressor condition and condenser cleanliness have a direct effect on cooling performance — and all three degrade with use in the UAE environment. A common complaint we hear from $name owners is that the AC no longer cools as quickly or as effectively as it did when the car was new, despite appearing to function normally. This is typically caused by a combination of refrigerant micro-losses over time, a partially blocked condenser coil from dust accumulation, and reduced compressor efficiency. FixHive performs a full AC system check including refrigerant charge, leak test, condenser clean and compressor assessment at every service.</p>
    </div>
"@
  } else {
    # american
    $issues = @"
    <div class="issue-item">
      <h3>⚠️ V8 Engine AFM/DOD Lifter Failures in UAE Heat</h3>
      <p>Many $name V8 engines use Active Fuel Management (AFM) or Dynamic Fuel Management (DFM) technology to deactivate cylinders under light load, reducing fuel consumption in theory. In practice, Dubai's sustained high speeds on Sheikh Zayed Road and frequent heavy traffic create conditions where the system cycles between four and eight cylinder operation continuously, placing unusual stress on the AFM lifters. These components are known to wear and fail, producing a distinctive clacking noise, oil consumption increase and eventually a check engine light. The repair is significant and involves lifter replacement throughout the engine. FixHive recommends monitoring oil consumption closely and addressing any unusual engine noises on AFM-equipped $name vehicles promptly.</p>
    </div>
    <div class="issue-item">
      <h3>⚠️ Transmission Overheating in Dubai Traffic</h3>
      <p>The large automatic transmissions used in $name vehicles — including 6, 8 and 10-speed units — are robust under normal conditions but face sustained thermal stress in Dubai's stop-start summer traffic. Transmission fluid oxidises faster above 40°C ambient, losing its ability to control hydraulic pressure precisely and lubricate the clutch packs effectively. Symptoms of degraded transmission fluid include firmer or harsher shifts, a slight hunting between gears and occasionally a transmission temperature warning. FixHive recommends transmission fluid changes every 40,000 km for UAE-driven $name vehicles — significantly more frequently than the global factory recommendation — and we carry $name-specification transmission fluids in stock for all current models.</p>
    </div>
    <div class="issue-item">
      <h3>⚠️ Air Conditioning Compressor and Condenser Issues</h3>
      <p>$name vehicles have large cabin volumes that place significant demands on the air conditioning system. In Dubai, the system runs at full output for months at a time, and the compressor clutch cycles thousands of times in city traffic. The front-mounted condenser is also exposed to high ambient temperatures and road debris. Refrigerant micro-leaks from the condenser and reduced compressor efficiency are among the most common AC complaints we see on $name vehicles in the UAE. Symptoms include air that does not cool to the temperature set on the climate control, extended time to reach target temperature, and occasional clutch engagement noise. FixHive carries out full AC system diagnostics and has $name-compatible compressor assemblies available for rapid replacement.</p>
    </div>
    <div class="issue-item">
      <h3>⚠️ Suspension Wear on UAE Roads and Speed Bumps</h3>
      <p>$name vehicles are designed for North American road conditions, where speed bumps are relatively rare and road surfaces are generally smooth. UAE roads, by contrast, feature aggressive speed bumps in residential areas and some commercial zones, as well as occasional rough surfaces on secondary roads. The front and rear suspension components — particularly the strut mounts, ball joints and sway bar links — wear more rapidly under these conditions than the factory service schedule anticipates. Symptoms include a clunking noise over speed bumps, vague steering response and a pulling sensation under hard braking. FixHive inspects all $name suspension components at every service and carries commonly required parts in stock for rapid replacement.</p>
    </div>
"@
  }

  # FAQ based on category
  if ($cat -eq "luxury") {
    $faq1Q = "How much does $name servicing cost in Dubai?"
    $faq1A = "Servicing costs for $name at FixHive vary by model and service type. A minor service covering oil and filter replacement and a full multi-point inspection typically starts from AED 800–1,500. Major services including spark plugs, air filters, transmission fluid and a full brake and suspension inspection range from AED 2,000–4,500 depending on the specific model. We provide a written quotation before any work begins, with no hidden charges."
    $faq2Q = "Can FixHive service my $name without voiding the warranty?"
    $faq2A = "Yes. UAE consumer protection regulations and the standard terms of most $name warranties permit independent garage servicing provided correct specification parts and procedures are used. FixHive uses genuine or OEM-equivalent parts, follows $name service procedures, and provides full documented service records for every visit — exactly the evidence required to support a warranty claim if one arises."
    $faq3Q = "How does Dubai heat affect $name vehicles specifically?"
    $faq3A = "The primary impacts of Dubai heat on $name vehicles are accelerated degradation of engine and transmission fluids, increased stress on the air suspension compressor and bags, faster wear of rubber sealing components in the cooling and braking circuits, and higher thermal load on the electronic control units. FixHive adapts its service recommendations to account for UAE conditions, recommending shorter fluid change intervals than the global factory schedule."
    $faq4Q = "Do you source genuine $name parts in Dubai?"
    $faq4A = "FixHive sources parts through authorised distributors in the UAE and established European channels. For most commonly required $name consumables and wear items we hold stock, and for specialist components we can source parts with lead times of a few working days. We use only genuine or OEM-equivalent components and provide full parts traceability on every invoice."
    $faq5Q = "What makes FixHive different from a $name dealer in Dubai?"
    $faq5A = "FixHive offers the same technical capability as a franchised dealer — including manufacturer-level diagnostic software, trained technicians and correct specification parts — but at independent garage prices that are typically 30–50% lower than dealer labour rates. We also offer a more personalised service experience, with direct communication with the technician working on your car and full transparency on every aspect of the work performed."
  } elseif ($cat -eq "chinese") {
    $faq1Q = "How much does $name servicing cost in Dubai?"
    $faq1A = "Minor servicing for $name vehicles at FixHive starts from AED 300–500, covering engine oil and filter replacement and a multi-point inspection. Major services including air filter, cabin filter, spark plugs, transmission fluid and brake inspection range from AED 600–1,200 depending on the model. We provide a written quotation before any work begins."
    $faq2Q = "Can FixHive read $name fault codes and perform software updates?"
    $faq2A = "Yes. FixHive carries diagnostic equipment compatible with $name vehicle systems, allowing us to read all fault codes, perform actuator tests, reset service indicators and carry out control unit adaptations. For software calibration updates that require dealer-level access we can advise on the specific update and assist with coordination if needed."
    $faq3Q = "Does FixHive service $name electric or hybrid models?"
    $faq3A = "Yes. FixHive has experience with battery electric vehicles and plug-in hybrid systems. For $name EV and PHEV models we can service the high-voltage battery cooling system, 12V auxiliary system, charging port and all conventional vehicle systems. Our technicians follow high-voltage safety protocols and hold relevant EV servicing qualifications."
    $faq4Q = "How often should I service my $name in Dubai?"
    $faq4A = "For UAE conditions we recommend engine oil changes every 5,000–7,500 km for turbocharged $name engines rather than the global 10,000–15,000 km interval. Air filter inspection every 15,000 km, and a major service every 40,000 km covering spark plugs, transmission fluid, coolant and a full vehicle inspection. The Dubai climate accelerates fluid degradation significantly compared to temperate climates."
    $faq5Q = "Are genuine $name parts available in Dubai?"
    $faq5A = "Genuine and quality-equivalent parts for current $name models are available in the UAE, and FixHive has established supply relationships with $name parts distributors. For common consumables and wear items we hold stock for rapid service completion. For less frequently required parts we can source within a few working days and will advise you on lead times upfront."
  } else {
    $faq1Q = "How much does $name servicing cost in Dubai?"
    $faq1A = "Minor $name services at FixHive start from AED 400–600, covering engine oil and filter replacement and a multi-point inspection. Major services including transmission fluid, spark plugs, air filter, coolant and a full brake and suspension inspection range from AED 800–1,800 depending on the model and engine type. We provide a written quotation before any work begins."
    $faq2Q = "How often should I change the transmission fluid on my $name in Dubai?"
    $faq2A = "For UAE conditions we recommend automatic transmission fluid changes every 40,000–50,000 km, rather than the global factory recommendation which can extend to 100,000 km or more. Dubai's sustained heat and stop-start traffic accelerate fluid oxidation significantly. Staying on top of transmission fluid is the most cost-effective protection against the most expensive drivetrain repairs."
    $faq3Q = "Can FixHive diagnose $name-specific fault codes?"
    $faq3A = "Yes. FixHive carries OBD-II and manufacturer-specific diagnostic protocols for $name vehicles, giving us access to all engine, transmission, ABS, airbag, stability control and ADAS fault codes. We can perform actuator tests, module resets and system adaptations, covering everything a franchised dealer diagnostic session would include."
    $faq4Q = "How does Dubai heat affect my $name specifically?"
    $faq4A = "The primary effects are accelerated engine oil degradation (recommending 5,000–7,500 km intervals rather than 10,000 km), faster transmission fluid oxidation, increased AC compressor wear from continuous operation, and faster depletion of brake fluid moisture absorption capacity. FixHive tailors its service recommendations to UAE driving conditions for every $name model it services."
    $faq5Q = "Does FixHive service $name vehicles still under manufacturer warranty?"
    $faq5A = "Yes. UAE consumer protection regulations permit independent garage servicing without voiding the manufacturer warranty, provided correct procedures and specification parts are used. FixHive uses genuine or OEM-equivalent $name parts and provides full documented service records for every visit, which you can present to the $name dealer if a warranty query arises."
  }

  # WhatsApp message
  $waMsg = "Hey%2C%20I%20want%20to%20book%20a%20$($name -replace ' ','%20')%20service%20at%20FixHive"

  return @{
    intro = $intro
    issues = $issues
    faq1Q = $faq1Q; faq1A = $faq1A
    faq2Q = $faq2Q; faq2A = $faq2A
    faq3Q = $faq3Q; faq3A = $faq3A
    faq4Q = $faq4Q; faq4A = $faq4A
    faq5Q = $faq5Q; faq5A = $faq5A
    waMsg = $waMsg
  }
}

$outDir = "C:\Users\gianl\OneDrive\Desktop\AI\fixhive"

foreach ($b in $brands) {
  $name = $b.name
  $slug = $b.slug
  $content = Get-BrandContent -b $b

  $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-819HFHM37T"></script>
    <script>window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments);}gtag('js',new Date());gtag('config','G-819HFHM37T');</script>
  <meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>$name Repair &amp; Service Dubai | FixHive Garage</title>
  <meta name="description" content="Expert $name repair in Dubai. $($b.models) specialists. Genuine parts, trained technicians. Book from AED 300." />
  <meta name="robots" content="index, follow" />
  <link rel="canonical" href="https://myfixhive.ae/$slug-repair-dubai.html" />
  <meta name="geo.position" content="24.972111;55.1737988">
  <meta name="geo.region" content="AE-DU">
  <meta name="geo.placename" content="Dubai">
  <link rel="alternate" hreflang="en-AE" href="https://myfixhive.ae/$slug-repair-dubai.html" />
  <link rel="alternate" hreflang="ar-AE" href="https://myfixhive.ae/ar/$slug-repair-dubai.html" />
  <link rel="alternate" hreflang="x-default" href="https://myfixhive.ae/$slug-repair-dubai.html" />
  <meta property="og:type" content="website" /><meta property="og:url" content="https://myfixhive.ae/$slug-repair-dubai.html" />
  <meta property="og:title" content="$name Repair &amp; Service Dubai | FixHive" /><meta property="og:description" content="Expert $name repair in Dubai. $($b.models). Book from AED 300." />
  <meta property="og:image" content="https://myfixhive.ae/images/og-fixhive.jpg" /><meta property="og:site_name" content="FixHive Garage" /><meta property="og:locale" content="en_AE" />
  <meta name="twitter:card" content="summary_large_image" />
  <script type="application/ld+json">
  {"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"Home","item":"https://myfixhive.ae/"},{"@type":"ListItem","position":2,"name":"Brands","item":"https://myfixhive.ae/brands.html"},{"@type":"ListItem","position":3,"name":"$name Repair Dubai","item":"https://myfixhive.ae/$slug-repair-dubai.html"}]}
  </script>
  <script type="application/ld+json">
  {"@context":"https://schema.org","@type":"FAQPage","mainEntity":[{"@type":"Question","name":"$($content.faq1Q)","acceptedAnswer":{"@type":"Answer","text":"$($content.faq1A)"}},{"@type":"Question","name":"$($content.faq2Q)","acceptedAnswer":{"@type":"Answer","text":"$($content.faq2A)"}},{"@type":"Question","name":"$($content.faq3Q)","acceptedAnswer":{"@type":"Answer","text":"$($content.faq3A)"}},{"@type":"Question","name":"$($content.faq4Q)","acceptedAnswer":{"@type":"Answer","text":"$($content.faq4A)"}},{"@type":"Question","name":"$($content.faq5Q)","acceptedAnswer":{"@type":"Answer","text":"$($content.faq5A)"}}]}
  </script>
  <link rel="stylesheet" href="shared.css" />
  <style>
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
    .faq-q::after{content:'+';font-size:1.3rem;font-weight:400;color:#1d4ed8;flex-shrink:0;transition:transform .2s;}
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
  </style>
  <link rel="stylesheet" href="chatbot.css" />
</head>
<body>
<a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment" class="top-bar" target="_blank" rel="noopener" aria-label="Contact FixHive on WhatsApp">
  <span class="top-bar-icon">💬</span>
  <span class="top-bar-text"><strong>Free Diagnostic Check</strong> — WhatsApp us your car problem now</span>
  <span class="top-bar-cta">Chat Now →</span>
</a>
$navEN
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
  <a href="offers.html" style="color:var(--amber);background:rgba(245,166,35,0.14);border:1.5px solid rgba(245,166,35,0.55);font-weight:700;border-radius:20px;padding:0.4rem 1rem;">🔥 Special Offers</a>
  <a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment">📲 Book on WhatsApp</a>
</div>

<section class="page-hero">
  <div class="breadcrumb"><a href="index.html">Home</a> › <a href="brands.html">Brands</a> › $name Repair Dubai</div>
  <h1>$($b.hero)</h1>
  <p>$($b.heroSub)</p>
</section>

<div class="page-content">
  <div class="brand-hero-logo">
    <img src="images/logos/$slug.png" alt="$name logo" onerror="this.style.display='none'" />
    <div>
      <h2 style="margin:0 0 0.3rem;font-size:1.5rem;color:#0a2463;">$name Specialists in Dubai</h2>
      <p style="margin:0;color:#6b7280;font-size:0.93rem;">$($b.subtitle)</p>
    </div>
  </div>

  <div class="intro-text">
$($content.intro)
  </div>

  <h2 class="section-title">Common $name Issues in Dubai</h2>
  <div class="issues-grid">
$($content.issues)
  </div>

  <h2 class="section-title">Our $name Services in Dubai</h2>
  <div class="brand-svc-grid">
    <a href="engine.html" class="brand-svc-tile"><span class="svc-tile-icon">🔧</span>Engine Repair &amp; Service</a>
    <a href="gearbox.html" class="brand-svc-tile"><span class="svc-tile-icon">⚙️</span>Transmission Service</a>
    <a href="gearbox.html" class="brand-svc-tile"><span class="svc-tile-icon">🔄</span>Drivetrain &amp; Gearbox</a>
    <a href="brakes.html" class="brand-svc-tile"><span class="svc-tile-icon">🛑</span>Brake Repair</a>
    <a href="brakes.html" class="brand-svc-tile"><span class="svc-tile-icon">🚗</span>Suspension Repair</a>
    <a href="ac-service.html" class="brand-svc-tile"><span class="svc-tile-icon">❄️</span>AC Repair &amp; Regas</a>
    <a href="engine.html" class="brand-svc-tile"><span class="svc-tile-icon">🌡️</span>Cooling System Service</a>
    <a href="tyres.html" class="brand-svc-tile"><span class="svc-tile-icon">⬤</span>Wheel Alignment</a>
    <a href="electrical.html" class="brand-svc-tile"><span class="svc-tile-icon">🔋</span>Battery &amp; Electrical</a>
    <a href="pre-purchase-inspection.html" class="brand-svc-tile"><span class="svc-tile-icon">🔍</span>Pre-Purchase Inspection</a>
    <a href="detailing.html" class="brand-svc-tile"><span class="svc-tile-icon">✨</span>PPF &amp; Detailing</a>
    <a href="service-packages.html" class="brand-svc-tile"><span class="svc-tile-icon">📋</span>Service Packages</a>
  </div>
  <p class="svc-tile-note">All $name services performed by trained technicians using manufacturer-specified fluids and OEM-equivalent parts. Minor services from AED 300.</p>
</div>

<section class="faq-section">
  <div style="max-width:1100px;margin:0 auto;">
    <h2 class="section-title">$name Repair Dubai — FAQ</h2>
    <div class="faq-list">
      <div class="faq-item">
        <button class="faq-q">$($content.faq1Q)</button>
        <div class="faq-a"><p>$($content.faq1A)</p></div>
      </div>
      <div class="faq-item">
        <button class="faq-q">$($content.faq2Q)</button>
        <div class="faq-a"><p>$($content.faq2A)</p></div>
      </div>
      <div class="faq-item">
        <button class="faq-q">$($content.faq3Q)</button>
        <div class="faq-a"><p>$($content.faq3A)</p></div>
      </div>
      <div class="faq-item">
        <button class="faq-q">$($content.faq4Q)</button>
        <div class="faq-a"><p>$($content.faq4A)</p></div>
      </div>
      <div class="faq-item">
        <button class="faq-q">$($content.faq5Q)</button>
        <div class="faq-a"><p>$($content.faq5A)</p></div>
      </div>
    </div>
  </div>
</section>

<section style="padding:40px 5%;background:#fff;max-width:1100px;margin:0 auto;">
  <h2 class="section-title" style="margin-bottom:1rem;">We Also Specialise In</h2>
  <div style="display:flex;flex-wrap:wrap;gap:0.6rem;">
    <a href="toyota-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Toyota</a>
    <a href="honda-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Honda</a>
    <a href="nissan-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Nissan</a>
    <a href="bmw-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">BMW</a>
    <a href="mercedes-benz-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Mercedes-Benz</a>
    <a href="audi-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Audi</a>
    <a href="hyundai-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Hyundai</a>
    <a href="kia-repair-dubai.html" style="padding:0.5rem 1.1rem;background:#f0f4ff;border:1.5px solid #c7d2fe;border-radius:20px;text-decoration:none;color:#1e3a8a;font-size:0.88rem;font-weight:600;">Kia</a>
  </div>
</section>

<section class="page-cta">
  <h2>Book Your $name Service in Dubai Today</h2>
  <p>Expert care for your $name — dealer-level quality at independent prices.</p>
  <a href="https://wa.me/971541699500?text=$($content.waMsg)" class="btn-primary" style="background:#f5a623;color:#0a2463;padding:0.85rem 2rem;border-radius:30px;font-weight:700;text-decoration:none;font-size:1rem;">📲 WhatsApp to Book</a>
</section>

<footer>
  <div class="footer-grid">
    <div class="footer-brand">
      <a href="index.html" class="logo"><img src="img/logo.webp" alt="FixHive Garage Dubai" /></a>
      <p>Reliable, affordable car repair across Dubai. Dealer-level quality — without dealer prices.</p>
      <div class="footer-payment">
        <div class="footer-payment-label">We Accept</div>
        <div class="footer-payment-icons">
          <span class="pay-badge" title="Visa" aria-label="Visa"><svg xmlns="http://www.w3.org/2000/svg" width="52" height="32" viewBox="0 0 52 32"><rect width="52" height="32" rx="4" fill="#1A1F71"/><text x="26" y="23" font-family="Arial,Helvetica,sans-serif" font-size="16" font-weight="900" font-style="italic" fill="#fff" text-anchor="middle">VISA</text></svg></span>
          <span class="pay-badge" title="Mastercard" aria-label="Mastercard"><svg xmlns="http://www.w3.org/2000/svg" width="52" height="32" viewBox="0 0 52 32"><rect width="52" height="32" rx="4" fill="#1d1d1d"/><circle cx="20" cy="16" r="10" fill="#EB001B"/><circle cx="32" cy="16" r="10" fill="#F79E1B"/><path d="M26 7a10 10 0 0 1 0 18A10 10 0 0 1 26 7z" fill="#FF5F00"/></svg></span>
          <a href="https://tabby.ai" class="pay-badge pay-tabby" target="_blank" rel="noopener">tabby</a>
          <a href="https://paymob.com" class="pay-badge pay-paymob" target="_blank" rel="noopener">paymob</a>
          <a href="https://www.fazaa.ae" class="pay-badge pay-fazaa" target="_blank" rel="noopener">fazaa</a>
        </div>
        <p class="payment-seo-text">FixHive Garage Dubai accepts Visa, Mastercard, Tabby buy now pay later, Paymob and Fazaa UAE government discount programme.</p>
      </div>
    </div>
    <div><h4>Quick Links</h4><ul><li><a href="services.html">All Services</a></li><li><a href="brands.html">Car Brands</a></li><li><a href="about.html">About Us</a></li><li><a href="contact.html">Contact</a></li><li><a href="https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment">Book on WhatsApp</a></li></ul></div>
    <div class="footer-contact"><h4>Contact</h4><p>📍 WH2 FixHive, 80 Street<br>Dubai Investment Park First, Dubai, UAE</p><p>🕐 Mon–Sat: 08:30 – 19:00</p><p>📞 <a href="tel:+971541699500">+971 54 169 9500</a></p><p>✉️ <a href="mailto:sale.ae@myfixhive.ae">sale.ae@myfixhive.ae</a></p><p>💬 <a href="https://wa.me/971541699500">WhatsApp Us</a></p><p>⭐ <a href="https://www.google.com/maps/search/Fixhive+Automotive+Garage+Car+Repair+Service+DIP+Dubai" target="_blank" rel="noopener">Google Reviews</a></p></div>
  </div>
  <div class="footer-bottom"><span>© 2026 FixHive Garage — Saher Auto General Repairing LLC</span><span>Dubai, UAE</span></div>
</footer>
<script>document.querySelectorAll('.faq-q').forEach(function(btn){btn.addEventListener('click',function(){var item=this.closest('.faq-item');var wasOpen=item.classList.contains('open');document.querySelectorAll('.faq-item').forEach(function(i){i.classList.remove('open');});if(!wasOpen)item.classList.add('open');});});</script>
<script src="chatbot.js" defer></script>
<script src="/js/nav.js" defer></script>
<script src="/js/search.js" defer></script>
</body>
</html>
"@

  $outPath = "$outDir\$slug-repair-dubai.html"
  [System.IO.File]::WriteAllText($outPath, $html, [System.Text.Encoding]::UTF8)
  Write-Host "Created: $outPath"
}

Write-Host "All 24 EN pages created."
