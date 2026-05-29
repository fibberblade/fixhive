# nav-brands-update.ps1
# 1. Remove "All Car Brands" from Services dropdown
# 2. Add Brands as standalone has-dropdown tile between Services and Packages
# 3. Add Brands link to mobile menu (after diagnostics sub-items)
# 4. Mark Brands as active on brands.html

$base  = 'C:\Users\gianl\OneDrive\Desktop\AI\fixhive'
$LF    = [string][char]10
$arrow = [char]8594   # Unicode right arrow (used in faq.html + brands.html written with it)

$pages = Get-ChildItem -Path $base -Filter '*.html' -File |
    Where-Object { $_.Name -notin @('404.html','admin.html') }

# Brands has-dropdown nav item (single-line/compact, alphabetical brand list)
$brandsDD = '<li class="has-dropdown"><a href="brands.html" class="nav-packages-link">Brands</a>' +
    '<ul class="nav-dropdown">' +
    '<li><a href="audi-repair-dubai.html">Audi</a></li>' +
    '<li><a href="bmw-repair-dubai.html">BMW</a></li>' +
    '<li><a href="ford-repair-dubai.html">Ford</a></li>' +
    '<li><a href="honda-repair-dubai.html">Honda</a></li>' +
    '<li><a href="hyundai-repair-dubai.html">Hyundai</a></li>' +
    '<li><a href="kia-repair-dubai.html">Kia</a></li>' +
    '<li><a href="land-rover-repair-dubai.html">Land Rover</a></li>' +
    '<li><a href="mercedes-benz-repair-dubai.html">Mercedes-Benz</a></li>' +
    '<li><a href="nissan-repair-dubai.html">Nissan</a></li>' +
    '<li><a href="toyota-repair-dubai.html">Toyota</a></li>' +
    '<li><a href="brands.html">All Brands</a></li>' +
    '</ul></li>'

foreach ($page in $pages) {
    $c    = [IO.File]::ReadAllText($page.FullName, [Text.Encoding]::UTF8)
    $c    = $c.Replace("`r`n", $LF).Replace("`r", $LF)
    $orig = $c

    # ── STEP 1: Remove "All Car Brands" li from Services dropdown ──
    # Variant A: no arrow (added by nav-faq-update.ps1)
    $c = $c.Replace(
        $LF + '        <li><a href="brands.html">All Car Brands</a></li>' + $LF + '      </ul>',
        $LF + '      </ul>'
    )
    # Variant B: with arrow (hand-written in faq.html + brands.html)
    $c = $c.Replace(
        $LF + '        <li><a href="brands.html">All Car Brands ' + $arrow + '</a></li>' + $LF + '      </ul>',
        $LF + '      </ul>'
    )

    # ── STEP 2: Insert Brands tile after Services dropdown, before Packages ──
    # Pattern = end of Services </ul> </li> then start of Packages <li>
    $oldSvcEnd = '      </ul>' + $LF + '    </li>' + $LF + '    <li class="has-dropdown"><a href="service-packages.html"'
    $newSvcEnd = '      </ul>' + $LF + '    </li>' + $LF + '    ' + $brandsDD + $LF + '    <li class="has-dropdown"><a href="service-packages.html"'
    $c = $c.Replace($oldSvcEnd, $newSvcEnd)

    # ── STEP 3: Mobile menu -- add Brands after Advanced Diagnostics sub-item ──
    $c = $c.Replace(
        '<a href="diagnostics.html" style="padding-left:1.5rem;font-size:0.87rem;">Advanced Diagnostics</a>',
        '<a href="diagnostics.html" style="padding-left:1.5rem;font-size:0.87rem;">Advanced Diagnostics</a>' + $LF + '  <a href="brands.html" style="color:var(--amber);font-weight:700;">Brands</a>'
    )

    if ($c -ne $orig) {
        [IO.File]::WriteAllText($page.FullName, $c, [Text.Encoding]::UTF8)
        Write-Host ('  Updated : ' + $page.Name) -ForegroundColor Green
    } else {
        Write-Host ('  Unchanged: ' + $page.Name) -ForegroundColor Yellow
    }
}

# ── STEP 4: Add active class to Brands on brands.html ──
$brandsFile = Join-Path $base 'brands.html'
$b = [IO.File]::ReadAllText($brandsFile, [Text.Encoding]::UTF8)
$b = $b.Replace(
    '<a href="brands.html" class="nav-packages-link">Brands</a>',
    '<a href="brands.html" class="active nav-packages-link">Brands</a>'
)
[IO.File]::WriteAllText($brandsFile, $b, [Text.Encoding]::UTF8)
Write-Host ('  Active class set on brands.html') -ForegroundColor Cyan

Write-Host ''
Write-Host 'nav-brands-update done.' -ForegroundColor Cyan
