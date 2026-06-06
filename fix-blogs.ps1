$path = "C:\Users\gianl\OneDrive\Desktop\AI\fixhive\blogs.html"
$content = Get-Content $path -Raw -Encoding UTF8

# ── 1. Update BlogPosting schema URLs (JSON-LD) ──────────────────────────────
# Each entry has a unique headline; replace its url/mainEntityOfPage with the individual page URL.
# Pattern: in a line containing the headline, replace the blogs.html url references.

$schemaMap = @{
  'How Dubai' + [char]0x2019 + 's Heat Destroys Your Car AC' = 'dubai-heat-destroys-car-ac'
  'Sand & Dust Damage to Car Engines in the UAE'              = 'sand-dust-engine-damage-uae'
  'Is a Flood-Damaged Car Repairable?'                        = 'flood-damaged-car-repair-dubai'
  'Why Cars Overheat More in Dubai Summer'                    = 'car-overheating-dubai-summer'
  'Nissan Patrol Common Problems UAE'                         = 'nissan-patrol-common-problems-uae'
  'Toyota Land Cruiser High Mileage Service Guide'            = 'toyota-land-cruiser-high-mileage-service'
  'What Your Dashboard Warning Lights Actually Mean'          = 'dashboard-warning-lights-dubai'
  'Which Tyres Are Best for Dubai Roads?'                     = 'best-tyres-dubai-roads'
  'How to Buy a Pre-Owned Car in Dubai Without Getting Burned'= 'buy-pre-owned-car-dubai'
  'Porsche Cayenne Coolant Pipe Failure'                      = 'porsche-cayenne-coolant-pipe-failure'
  'Ford F150 Major Service Guide UAE'                         = 'ford-f150-service-guide-uae'
  'BMW N63 Engine Problems'                                   = 'bmw-n63-engine-problems-dubai'
  'BMW Oil Consumption Issues'                                = 'bmw-oil-consumption-issues'
  'Porsche Cayenne Transfer Case Problems Dubai'              = 'porsche-cayenne-transfer-case-dubai'
  'Land Rover Discovery Air Suspension Failure UAE'           = 'land-rover-air-suspension-uae'
  'Porsche Cayenne Air Suspension Failure'                    = 'porsche-cayenne-air-suspension-failure'
  'Hybrid Cars in Dubai: Are They Worth It in 2026?'          = 'hybrid-cars-dubai-2026'
  'Your AC Pre-Summer Checklist'                              = 'ac-pre-summer-checklist-dubai'
  'Car Service Intervals in Dubai'                            = 'car-service-intervals-dubai'
  'BMW Flood Damage Repair Dubai'                             = 'bmw-flood-damage-repair-dubai'
  'Porsche Cayenne Rear Main Seal Replacement Dubai'          = 'porsche-cayenne-rear-main-seal'
  'Mercedes-Benz Air Suspension Failure Dubai'                = 'mercedes-benz-air-suspension-failure'
  'Jeep Wrangler Death Wobble'                                = 'jeep-wrangler-death-wobble'
  'Engine Overheating in Dubai: Causes'                       = 'engine-overheating-dubai'
  'Dubai' + [char]0x2019 + 's Speed Bumps Are Destroying'    = 'dubai-speed-bumps-suspension'
  'Car Detailing in Dubai: How to Protect'                    = 'car-detailing-dubai-paint'
  'AC Re-gas vs Full AC System Overhaul'                      = 'ac-regas-vs-full-overhaul'
  'UAE Road Trip Ready'                                       = 'uae-road-trip-car-inspection'
  'How to Choose a Trustworthy Mechanic in Dubai'             = 'choose-trustworthy-mechanic-dubai'
  'Engine Oil in UAE Heat'                                    = 'engine-oil-uae-heat'
  'Why Car Batteries Fail Faster in Dubai'                    = 'car-battery-fail-dubai-heat'
  'How Long Do Brake Pads Last in Dubai?'                     = 'brake-pads-lifespan-dubai'
  'Year-End Car Check: 10 Things'                             = 'year-end-car-check-dubai'
  'Ceramic Coating vs PPF: Which Paint Protection'            = 'ceramic-coating-vs-ppf-dubai'
  'How to Keep Your Car' + [char]0x2019 + 's Interior Cool'  = 'keep-car-cool-dubai-sun'
  'Winter Driving in Dubai: What Changes'                     = 'winter-driving-dubai'
  'Car Insurance in Dubai: What Your Policy'                  = 'car-insurance-dubai-guide'
  'Fuel Types in Dubai: Do You Really Need'                   = 'fuel-types-dubai-98-vs-95'
  'The Best Time to Buy a New Car in Dubai'                   = 'best-time-buy-car-dubai'
  'EV Charging in Dubai: Everything Tesla'                    = 'ev-charging-dubai-guide'
  'Repair vs Replace: When Does It Stop'                      = 'repair-vs-replace-car-dubai'
  'Post-Summer Car Check: What Dubai'                         = 'post-summer-car-check-dubai'
  'Gearbox Problems in Dubai: Warning Signs'                  = 'gearbox-problems-dubai'
  'Wheel Alignment in Dubai: Why It Matters'                  = 'wheel-alignment-dubai'
}

# Process line by line for schema section
$lines = $content -split "`n"
$newLines = for ($i = 0; $i -lt $lines.Count; $i++) {
  $line = $lines[$i]
  if ($line -match '"@type":"BlogPosting"') {
    $matched = $false
    foreach ($key in $schemaMap.Keys) {
      if ($line -match [regex]::Escape($key)) {
        $slug = $schemaMap[$key]
        $line = $line -replace [regex]::Escape('"url":"https://myfixhive.ae/blogs.html"'), ('"url":"https://myfixhive.ae/blog/' + $slug + '.html"')
        $line = $line -replace [regex]::Escape('"mainEntityOfPage":"https://myfixhive.ae/blogs.html"'), ('"mainEntityOfPage":"https://myfixhive.ae/blog/' + $slug + '.html"')
        $matched = $true
        break
      }
    }
  }
  $line
}
$content = $newLines -join "`n"

# ── 2. Add href links to blog card titles (HTML) ─────────────────────────────
# Map of card title text (HTML-encoded) to slug
$titleMap = @(
  @{ title = "How Dubai&#8217;s Heat Destroys Your Car AC &#8212; And How to Prevent It";    slug = "dubai-heat-destroys-car-ac" },
  @{ title = "How Dubai's Heat Destroys Your Car AC — And How to Prevent It";                slug = "dubai-heat-destroys-car-ac" },
  @{ title = "Sand &amp; Dust Damage to Car Engines in the UAE — What Really Happens Inside"; slug = "sand-dust-engine-damage-uae" },
  @{ title = "Is a Flood-Damaged Car Repairable? A Dubai Mechanic Explains the Truth";       slug = "flood-damaged-car-repair-dubai" },
  @{ title = "Why Cars Overheat More in Dubai Summer — And What to Do When Yours Does";       slug = "car-overheating-dubai-summer" },
  @{ title = "Nissan Patrol Common Problems UAE — What Every Y62 Owner Needs to Know";        slug = "nissan-patrol-common-problems-uae" },
  @{ title = "Toyota Land Cruiser High Mileage Service Guide — Keeping Your LC Running at 200,000 km+"; slug = "toyota-land-cruiser-high-mileage-service" },
  @{ title = "What Your Dashboard Warning Lights Actually Mean — A Dubai Driver's Guide";     slug = "dashboard-warning-lights-dubai" },
  @{ title = "Which Tyres Are Best for Dubai Roads? Heat Ratings, Speed Ratings &amp; What to Look For"; slug = "best-tyres-dubai-roads" },
  @{ title = "How to Buy a Pre-Owned Car in Dubai Without Getting Burned";                    slug = "buy-pre-owned-car-dubai" },
  @{ title = "Porsche Cayenne Coolant Pipe Failure — The Plastic Problem That Catches Owners Off Guard"; slug = "porsche-cayenne-coolant-pipe-failure" },
  @{ title = "Ford F-150 Service Guide UAE — Maintenance for Dubai Conditions";               slug = "ford-f150-service-guide-uae" },
  @{ title = "Ford F150 Major Service Guide UAE — What's Included &amp; What It Should Cost"; slug = "ford-f150-service-guide-uae" },
  @{ title = "BMW N63 Engine Problems — What Every X5, X6 &amp; 5 Series Owner Needs to Know"; slug = "bmw-n63-engine-problems-dubai" },
  @{ title = "BMW Oil Consumption Issues — When Is It Normal &amp; When Should You Worry?";   slug = "bmw-oil-consumption-issues" },
  @{ title = "Porsche Cayenne Transfer Case Problems Dubai — Symptoms, Diagnosis &amp; Repair"; slug = "porsche-cayenne-transfer-case-dubai" },
  @{ title = "Land Rover Discovery Air Suspension Failure UAE — What to Expect &amp; What to Do"; slug = "land-rover-air-suspension-uae" },
  @{ title = "Porsche Cayenne Air Suspension Failure — Signs, Risks &amp; Repair Options in Dubai"; slug = "porsche-cayenne-air-suspension-failure" },
  @{ title = "Hybrid Cars in Dubai: Are They Worth It in 2026?";                              slug = "hybrid-cars-dubai-2026" },
  @{ title = "Your AC Pre-Summer Checklist: Why March Is the Right Time to Service It";       slug = "ac-pre-summer-checklist-dubai" },
  @{ title = "Car Service Intervals in Dubai: Follow the Manufacturer Book or Adapt for the Heat?"; slug = "car-service-intervals-dubai" },
  @{ title = "BMW Flood Damage Repair Dubai — What to Do After Heavy Rain";                   slug = "bmw-flood-damage-repair-dubai" },
  @{ title = "Porsche Cayenne Rear Main Seal Replacement Dubai — Symptoms, Cost &amp; What to Expect"; slug = "porsche-cayenne-rear-main-seal" },
  @{ title = "Mercedes-Benz Air Suspension Failure Dubai — Causes, Symptoms &amp; Repair Options"; slug = "mercedes-benz-air-suspension-failure" },
  @{ title = "Jeep Wrangler Death Wobble — Why It Happens &amp; How to Fix It";               slug = "jeep-wrangler-death-wobble" },
  @{ title = "Engine Overheating in Dubai: Causes, Warning Signs &amp; What to Do Right Now"; slug = "engine-overheating-dubai" },
  @{ title = "Dubai's Speed Bumps Are Destroying Your Suspension — Here's What to Check";    slug = "dubai-speed-bumps-suspension" },
  @{ title = "Car Detailing in Dubai: How to Protect Your Paint from Desert Dust, UV &amp; Sand"; slug = "car-detailing-dubai-paint" },
  @{ title = "AC Re-gas vs Full AC System Overhaul: What Dubai Drivers Need to Know";         slug = "ac-regas-vs-full-overhaul" },
  @{ title = "UAE Road Trip Ready: What to Inspect Before Driving on UAE Highways";           slug = "uae-road-trip-car-inspection" },
  @{ title = "How to Choose a Trustworthy Mechanic in Dubai: 7 Questions to Ask";             slug = "choose-trustworthy-mechanic-dubai" },
  @{ title = "Engine Oil in UAE Heat: Why Your Oil Grade Matters More Than You Think";        slug = "engine-oil-uae-heat" },
  @{ title = "Why Car Batteries Fail Faster in Dubai — And How to Prevent It";               slug = "car-battery-fail-dubai-heat" },
  @{ title = "How Long Do Brake Pads Last in Dubai? The Truth About Brakes in Stop-Start Traffic"; slug = "brake-pads-lifespan-dubai" },
  @{ title = "Year-End Car Check: 10 Things to Inspect Before 2026";                         slug = "year-end-car-check-dubai" },
  @{ title = "Ceramic Coating vs PPF: Which Paint Protection Is Right for Your Dubai Car?";  slug = "ceramic-coating-vs-ppf-dubai" },
  @{ title = "How to Keep Your Car's Interior Cool When Parked in Dubai's Sun";              slug = "keep-car-cool-dubai-sun" },
  @{ title = "Winter Driving in Dubai: What Changes When Temperatures Drop to 15°C";         slug = "winter-driving-dubai" },
  @{ title = "Car Insurance in Dubai: What Your Policy Actually Covers — and What It Doesn't"; slug = "car-insurance-dubai-guide" },
  @{ title = "Fuel Types in Dubai: Do You Really Need Special 98 Petrol or Is Super 95 Fine?"; slug = "fuel-types-dubai-98-vs-95" },
  @{ title = "The Best Time to Buy a New Car in Dubai: End-of-Year Deals Explained";         slug = "best-time-buy-car-dubai" },
  @{ title = "EV Charging in Dubai: Everything Tesla and Electric Car Owners Need to Know";  slug = "ev-charging-dubai-guide" },
  @{ title = "Repair vs Replace: When Does It Stop Making Sense to Fix Your Car in Dubai?";  slug = "repair-vs-replace-car-dubai" },
  @{ title = "Post-Summer Car Check: What Dubai's Heat Does to Your Car Over 5 Months";     slug = "post-summer-car-check-dubai" },
  @{ title = "Gearbox Problems in Dubai: Warning Signs, Causes &amp; What the Repair Actually Costs"; slug = "gearbox-problems-dubai" },
  @{ title = "Wheel Alignment in Dubai: Why It Matters More Than You Think &amp; How Often to Do It"; slug = "wheel-alignment-dubai" }
)

foreach ($t in $titleMap) {
  $from = '<h2 class="blog-card-title">' + $t.title + '</h2>'
  $to   = '<h2 class="blog-card-title"><a href="blog/' + $t.slug + '.html">' + $t.title + '</a></h2>'
  $content = $content.Replace($from, $to)
}

# Also update search placeholder from "27 articles" to "44 articles"
$content = $content.Replace('Search 27 articles', 'Search 44 articles')

# Write back
[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
Write-Host "Done. blogs.html updated."
