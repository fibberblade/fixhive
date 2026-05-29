# nav-mega-update.ps1
# Replace the compact 10-brand Brands dropdown with a full 54-brand mega menu on every page.

$base = 'C:\Users\gianl\OneDrive\Desktop\AI\fixhive'
$LF   = [string][char]10

$pages = Get-ChildItem -Path $base -Filter '*.html' -File |
    Where-Object { $_.Name -notin @('404.html','admin.html') }

# Full sorted brand list: [display name, href]
$brands = @(
    @('Alfa Romeo',      'contact.html?brand=alfa-romeo'),
    @('Aston Martin',    'contact.html?brand=aston-martin'),
    @('Audi',            'audi-repair-dubai.html'),
    @('Bentley',         'contact.html?brand=bentley'),
    @('BMW',             'bmw-repair-dubai.html'),
    @('BYD',             'contact.html?brand=byd'),
    @('Cadillac',        'contact.html?brand=cadillac'),
    @('Changan',         'contact.html?brand=changan'),
    @('Chery',           'contact.html?brand=chery'),
    @('Chevrolet',       'contact.html?brand=chevrolet'),
    @('Chrysler',        'contact.html?brand=chrysler'),
    @('Daihatsu',        'contact.html?brand=daihatsu'),
    @('Dodge',           'contact.html?brand=dodge'),
    @('Ferrari',         'contact.html?brand=ferrari'),
    @('Fiat',            'contact.html?brand=fiat'),
    @('Ford',            'ford-repair-dubai.html'),
    @('GAC',             'contact.html?brand=gac'),
    @('Geely',           'contact.html?brand=geely'),
    @('Genesis',         'contact.html?brand=genesis'),
    @('GMC',             'contact.html?brand=gmc'),
    @('Haval',           'contact.html?brand=haval'),
    @('Honda',           'honda-repair-dubai.html'),
    @('HongQi',          'contact.html?brand=hongqi'),
    @('Hyundai',         'hyundai-repair-dubai.html'),
    @('Infiniti',        'contact.html?brand=infiniti'),
    @('Isuzu',           'contact.html?brand=isuzu'),
    @('Jaguar',          'jaguar-repair-dubai.html'),
    @('Jeep',            'contact.html?brand=jeep'),
    @('Jetour',          'contact.html?brand=jetour'),
    @('Kia',             'kia-repair-dubai.html'),
    @('Lamborghini',     'contact.html?brand=lamborghini'),
    @('Land Rover',      'land-rover-repair-dubai.html'),
    @('Lexus',           'lexus-repair-dubai.html'),
    @('Lincoln',         'contact.html?brand=lincoln'),
    @('Maserati',        'contact.html?brand=maserati'),
    @('Maybach',         'contact.html?brand=maybach'),
    @('Mazda',           'mazda-repair-dubai.html'),
    @('Mercedes-Benz',   'mercedes-benz-repair-dubai.html'),
    @('MG',              'contact.html?brand=mg'),
    @('MINI',            'contact.html?brand=mini'),
    @('Mitsubishi',      'mitsubishi-repair-dubai.html'),
    @('Nissan',          'nissan-repair-dubai.html'),
    @('Peugeot',         'contact.html?brand=peugeot'),
    @('Porsche',         'porsche-repair-dubai.html'),
    @('RAM',             'contact.html?brand=ram'),
    @('Range Rover',     'land-rover-repair-dubai.html'),
    @('Renault',         'contact.html?brand=renault'),
    @('Rolls-Royce',     'contact.html?brand=rolls-royce'),
    @('Subaru',          'contact.html?brand=subaru'),
    @('Suzuki',          'contact.html?brand=suzuki'),
    @('Tesla',           'tesla-repair-dubai.html'),
    @('Toyota',          'toyota-repair-dubai.html'),
    @('Volkswagen',      'volkswagen-repair-dubai.html'),
    @('Volvo',           'contact.html?brand=volvo')
)

# Build mega menu inner HTML
$inner = ''
foreach ($b in $brands) {
    $inner += '<li><a href="' + $b[1] + '">' + $b[0] + '</a></li>'
}
$inner += '<li class="nav-mega-footer"><a href="brands.html">All Brands</a></li>'

# Full Brands has-dropdown nav item (standard, no active)
$newBrandsNav = '<li class="has-dropdown"><a href="brands.html" class="nav-packages-link">Brands</a><ul class="nav-mega">' + $inner + '</ul></li>'

# Same but with active class (for brands.html)
$newBrandsNavActive = '<li class="has-dropdown"><a href="brands.html" class="active nav-packages-link">Brands</a><ul class="nav-mega">' + $inner + '</ul></li>'

foreach ($page in $pages) {
    $c    = [IO.File]::ReadAllText($page.FullName, [Text.Encoding]::UTF8)
    $c    = $c.Replace("`r`n", $LF).Replace("`r", $LF)
    $orig = $c

    # Replace existing Brands dropdown (any variant) using regex
    # Matches: <li class="has-dropdown"><a href="brands.html" class="(active )?nav-packages-link">Brands</a><ul class="nav-dropdown OR nav-mega">...(anything)...</ul></li>
    if ($page.Name -eq 'brands.html') {
        $c = [regex]::Replace($c,
            '<li class="has-dropdown"><a href="brands\.html" class="(?:active )?nav-packages-link">Brands</a><ul class="(?:nav-dropdown|nav-mega)">.*?</ul></li>',
            $newBrandsNavActive)
    } else {
        $c = [regex]::Replace($c,
            '<li class="has-dropdown"><a href="brands\.html" class="(?:active )?nav-packages-link">Brands</a><ul class="(?:nav-dropdown|nav-mega)">.*?</ul></li>',
            $newBrandsNav)
    }

    if ($c -ne $orig) {
        [IO.File]::WriteAllText($page.FullName, $c, [Text.Encoding]::UTF8)
        Write-Host ('  Updated : ' + $page.Name) -ForegroundColor Green
    } else {
        Write-Host ('  Unchanged: ' + $page.Name) -ForegroundColor Yellow
    }
}

Write-Host ''
Write-Host 'nav-mega-update done.' -ForegroundColor Cyan
