param(
    [Parameter(Mandatory=$true)]
    [int]$Count
)

$root = $PSScriptRoot

# Patch index.html
$en = "$root\index.html"
(Get-Content $en -Raw) -replace '"reviewCount": \d+', "`"reviewCount`": $Count" | Set-Content $en -Encoding utf8

# Patch ar/index.html
$ar = "$root\ar\index.html"
(Get-Content $ar -Raw) -replace '"reviewCount": "\d+"', "`"reviewCount`": `"$Count`"" | Set-Content $ar -Encoding utf8

Write-Host "Updated reviewCount to $Count in index.html and ar/index.html"

# Deploy
& "$root\deploy.ps1" -Message "Update Google review count to $Count"
