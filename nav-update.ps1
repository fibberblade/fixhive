# nav-update.ps1 — Add About and Packages nav dropdowns to all EN pages
$base = 'C:\Users\gianl\OneDrive\Desktop\AI\fixhive'
$LF   = [string][char]10

$pages = Get-ChildItem -Path $base -Filter '*.html' -File |
    Where-Object { $_.Name -notin @('404.html','admin.html') }

# ── About dropdown (nav) ── all on one line, no embedded newlines
$aboutDD = '<ul class="nav-dropdown">' +
  '<li><a href="about.html#values">Our Values</a></li>' +
  '<li><a href="about.html#history">How We Got Here</a></li>' +
  '<li><a href="about.html#brands">All Makes Welcome</a></li>' +
  '<li><a href="about.html#team" class="nav-dd-disabled">The Team <em>(coming soon)</em></a></li>' +
  '</ul>'

# ── Packages dropdown (nav) ── all on one line
$pkgDD = '<ul class="nav-dropdown">' +
  '<li><a href="service-packages.html#fixcare">FixCare</a></li>' +
  '<li><a href="service-packages.html#fixprime">FixPrime</a></li>' +
  '<li><a href="service-packages.html#fixelite">FixElite</a></li>' +
  '</ul>'

# ── Mobile sub-items for About ── leading LF so each item is on its own line
$aboutMob = $LF + '  <a href="about.html#values" style="padding-left:1.5rem;font-size:0.87rem;">Our Values</a>' +
            $LF + '  <a href="about.html#history" style="padding-left:1.5rem;font-size:0.87rem;">How We Got Here</a>' +
            $LF + '  <a href="about.html#brands" style="padding-left:1.5rem;font-size:0.87rem;">All Makes Welcome</a>' +
            $LF + '  <a href="about.html#team" style="padding-left:1.5rem;font-size:0.87rem;opacity:0.5;pointer-events:none;">The Team (coming soon)</a>'

# ── Mobile sub-items for Packages ──
$pkgMob = $LF + '  <a href="service-packages.html#fixcare" style="padding-left:1.5rem;font-size:0.87rem;">FixCare</a>' +
          $LF + '  <a href="service-packages.html#fixprime" style="padding-left:1.5rem;font-size:0.87rem;">FixPrime</a>' +
          $LF + '  <a href="service-packages.html#fixelite" style="padding-left:1.5rem;font-size:0.87rem;">FixElite</a>'

foreach ($page in $pages) {
    $c    = [IO.File]::ReadAllText($page.FullName, [Text.Encoding]::UTF8)
    $c    = $c.Replace("`r`n", $LF).Replace("`r", $LF)
    $orig = $c

    # ─────────────────────────────────────────────
    # NAV REPLACEMENTS  (must come before mobile)
    # ─────────────────────────────────────────────

    # About (active – about.html only)
    $c = $c.Replace(
        '<li><a href="about.html" class="active nav-packages-link">About</a></li>',
        '<li class="has-dropdown"><a href="about.html" class="active nav-packages-link">About</a>' + $aboutDD + '</li>'
    )
    # About (standard)
    $c = $c.Replace(
        '<li><a href="about.html" class="nav-packages-link">About</a></li>',
        '<li class="has-dropdown"><a href="about.html" class="nav-packages-link">About</a>' + $aboutDD + '</li>'
    )
    # Packages
    $c = $c.Replace(
        '<li><a href="service-packages.html" class="nav-packages-link">Packages</a></li>',
        '<li class="has-dropdown"><a href="service-packages.html" class="nav-packages-link">Packages</a>' + $pkgDD + '</li>'
    )

    # ─────────────────────────────────────────────
    # MOBILE MENU REPLACEMENTS
    # Use 2-space-indented prefix ($LF + "  <a href=") which is UNIQUE to mobile menu
    # (nav lines are 4-space-indented and wrapped in <li>)
    # ─────────────────────────────────────────────

    # About mobile (index.html – no class on link)
    $c = $c.Replace(
        $LF + '  <a href="about.html">About</a>',
        $LF + '  <a href="about.html">About</a>' + $aboutMob
    )
    # About mobile (all other pages – has nav-packages-link class)
    $c = $c.Replace(
        $LF + '  <a href="about.html" class="nav-packages-link">About</a>',
        $LF + '  <a href="about.html" class="nav-packages-link">About</a>' + $aboutMob
    )
    # Packages mobile (all pages – unique style attribute differs from nav class attribute)
    $c = $c.Replace(
        $LF + '  <a href="service-packages.html" style="color:var(--amber);font-weight:700;">Packages</a>',
        $LF + '  <a href="service-packages.html" style="color:var(--amber);font-weight:700;">Packages</a>' + $pkgMob
    )

    if ($c -ne $orig) {
        [IO.File]::WriteAllText($page.FullName, $c, [Text.Encoding]::UTF8)
        Write-Host "  Updated : $($page.Name)" -ForegroundColor Green
    } else {
        Write-Host "  Unchanged: $($page.Name)" -ForegroundColor Yellow
    }
}
Write-Host ''
Write-Host 'nav-update done.' -ForegroundColor Cyan
