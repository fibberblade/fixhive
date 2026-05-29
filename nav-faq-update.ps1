# nav-faq-update.ps1 -- Add FAQ link (next to Offers) + Brands to Services dropdown
$base = 'C:\Users\gianl\OneDrive\Desktop\AI\fixhive'
$LF   = [string][char]10

$pages = Get-ChildItem -Path $base -Filter '*.html' -File |
    Where-Object { $_.Name -notin @('404.html','admin.html','faq.html','brands.html') }

foreach ($page in $pages) {
    $c    = [IO.File]::ReadAllText($page.FullName, [Text.Encoding]::UTF8)
    $c    = $c.Replace("`r`n", $LF).Replace("`r", $LF)
    $orig = $c

    # 1) NAV: Insert FAQ before Contact (standard)
    $c = $c.Replace(
        '<li><a href="contact.html" class="nav-packages-link">Contact</a></li>',
        '<li><a href="faq.html" class="nav-packages-link">FAQ</a></li>' + $LF + '    <li><a href="contact.html" class="nav-packages-link">Contact</a></li>'
    )
    # 2) NAV: Insert FAQ before Contact (active -- contact.html)
    $c = $c.Replace(
        '<li><a href="contact.html" class="active nav-packages-link">Contact</a></li>',
        '<li><a href="faq.html" class="nav-packages-link">FAQ</a></li>' + $LF + '    <li><a href="contact.html" class="active nav-packages-link">Contact</a></li>'
    )

    # 3) Services dropdown: add Brands after Advanced Diagnostics (multiline format)
    $oldDiagMulti = '<li><a href="diagnostics.html">Advanced Diagnostics</a></li>' + $LF + '      </ul>'
    $newDiagMulti = '<li><a href="diagnostics.html">Advanced Diagnostics</a></li>' + $LF + '        <li><a href="brands.html">All Car Brands</a></li>' + $LF + '      </ul>'
    $c = $c.Replace($oldDiagMulti, $newDiagMulti)

    # 4) Services dropdown: add Brands after Advanced Diagnostics (compact/single-line format)
    $oldDiagCompact = '<li><a href="diagnostics.html">Advanced Diagnostics</a></li></ul></li>'
    $newDiagCompact = '<li><a href="diagnostics.html">Advanced Diagnostics</a></li><li><a href="brands.html">All Car Brands</a></li></ul></li>'
    $c = $c.Replace($oldDiagCompact, $newDiagCompact)

    # 5) MOBILE: Add FAQ before Contact (2-space indent = mobile only)
    $c = $c.Replace(
        $LF + '  <a href="contact.html" class="nav-packages-link">Contact</a>',
        $LF + '  <a href="faq.html" class="nav-packages-link">FAQ</a>' + $LF + '  <a href="contact.html" class="nav-packages-link">Contact</a>'
    )
    $c = $c.Replace(
        $LF + '  <a href="contact.html">Contact</a>',
        $LF + '  <a href="faq.html">FAQ</a>' + $LF + '  <a href="contact.html">Contact</a>'
    )

    if ($c -ne $orig) {
        [IO.File]::WriteAllText($page.FullName, $c, [Text.Encoding]::UTF8)
        Write-Host ('  Updated : ' + $page.Name) -ForegroundColor Green
    } else {
        Write-Host ('  Unchanged: ' + $page.Name) -ForegroundColor Yellow
    }
}
Write-Host ''
Write-Host 'nav-faq-update done.' -ForegroundColor Cyan
