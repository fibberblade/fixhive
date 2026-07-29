# deploy.ps1 - FixHive two-step deploy
# Usage:  powershell -File deploy.ps1
#         powershell -File deploy.ps1 -Message "describe your change"
#
# Step 1: FTP-upload changed files to myfixhive.ae
# Step 2: Git commit + push to GitHub
# Credentials loaded from deploy-creds.ps1 (gitignored, local only)

param([string]$Message = "")

Set-StrictMode -Off
$ErrorActionPreference = 'Continue'

# Load credentials
$credsFile = Join-Path $PSScriptRoot 'deploy-creds.ps1'
if (-not (Test-Path $credsFile)) {
    Write-Host "ERROR: deploy-creds.ps1 not found." -ForegroundColor Red
    exit 1
}
. $credsFile

$ftpHost   = 'ftp.myfixhive.ae'
$gitRemote = "https://$gitToken@github.com/fibberblade/fixhive.git"
$localBase = $PSScriptRoot

function Upload-File($rel) {
    $req = [System.Net.FtpWebRequest]::Create("ftp://$ftpHost/$rel")
    $req.Method      = [System.Net.WebRequestMethods+Ftp]::UploadFile
    $req.Credentials = New-Object System.Net.NetworkCredential($ftpUser, $ftpPass)
    $req.EnableSsl   = $false
    $req.UsePassive  = $true
    $req.UseBinary   = $true
    $req.KeepAlive   = $false
    $bytes = [System.IO.File]::ReadAllBytes((Join-Path $localBase $rel))
    $req.ContentLength = $bytes.Length
    $s = $req.GetRequestStream()
    $s.Write($bytes, 0, $bytes.Length)
    $s.Close()
    $req.GetResponse().Close()
}

function Ensure-FtpDir($dir) {
    try {
        $req = [System.Net.FtpWebRequest]::Create("ftp://$ftpHost/$dir")
        $req.Method      = [System.Net.WebRequestMethods+Ftp]::MakeDirectory
        $req.Credentials = New-Object System.Net.NetworkCredential($ftpUser, $ftpPass)
        $req.EnableSsl   = $false
        $req.UsePassive  = $true
        $req.GetResponse().Close()
    } catch {}
}

# --------------------------------------------------
# STEP 1: Git Commit + Push to GitHub
# --------------------------------------------------
Write-Host ""
Write-Host "----------------------------------------------" -ForegroundColor Cyan
Write-Host " STEP 1 -- Git Commit + Push to GitHub" -ForegroundColor Cyan
Write-Host "----------------------------------------------" -ForegroundColor Cyan

Set-Location $localBase
git add -A 2>&1 | Out-Null

$status = git status --porcelain 2>$null
if (-not $status) {
    Write-Host "Nothing to commit -- working tree clean." -ForegroundColor Yellow
} else {
    if (-not $Message) {
        $Message = "Site update " + (Get-Date -Format "yyyy-MM-dd HH:mm")
    }
    $commitMsg = $Message + "`n`nCo-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>"
    git commit -m $commitMsg 2>&1 | ForEach-Object { Write-Host "  $_" }
    Write-Host ""
    Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
    git push $gitRemote main 2>&1 | ForEach-Object { Write-Host "  $_" }
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Push successful." -ForegroundColor Green
    } else {
        Write-Host "Push failed -- check token or network." -ForegroundColor Red
        Write-Host "Aborting FTP upload to keep live site in sync with GitHub." -ForegroundColor Red
        exit 1
    }
}

# --------------------------------------------------
# STEP 2: FTP Upload to live site
# --------------------------------------------------
Write-Host ""
Write-Host "----------------------------------------------" -ForegroundColor Cyan
Write-Host " STEP 2 -- FTP Upload to myfixhive.ae" -ForegroundColor Cyan
Write-Host "----------------------------------------------" -ForegroundColor Cyan

Set-Location $localBase

# Always upload all tracked site files
$allFiles = git ls-files 2>$null | Where-Object {
    $_ -match '\.(html|css|js|svg|json|webp|png|jpg|jpeg|ico|xml|txt)$' -or
    (Split-Path $_ -Leaf) -eq '.htaccess'
}

Write-Host "Files to upload: $($allFiles.Count)"

$dirs = $allFiles | ForEach-Object { Split-Path $_ -Parent } |
        Where-Object { $_ -ne '' } | Sort-Object -Unique
foreach ($d in $dirs) { Ensure-FtpDir ($d -replace '\\', '/') }

$ok = 0; $fail = 0; $failList = @()
foreach ($rel in $allFiles) {
    $localPath = Join-Path $localBase $rel
    if (-not (Test-Path $localPath)) { continue }
    $relFwd = $rel -replace '\\', '/'
    try {
        Upload-File $relFwd
        Write-Host "  OK  $relFwd" -ForegroundColor Green
        $ok++
    } catch {
        Write-Host "  FAIL  $relFwd -- $_" -ForegroundColor Red
        $fail++
        $failList += $relFwd
    }
}

Write-Host ""
if ($fail -eq 0) {
    Write-Host "FTP: $ok files uploaded successfully." -ForegroundColor Green
} else {
    Write-Host "FTP: $ok OK, $fail failed." -ForegroundColor Yellow
    $failList | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
}

Write-Host ""
Write-Host "----------------------------------------------" -ForegroundColor Cyan
Write-Host " DONE" -ForegroundColor Cyan
Write-Host " Site:   https://myfixhive.ae" -ForegroundColor White
Write-Host " GitHub: https://github.com/fibberblade/fixhive" -ForegroundColor White
Write-Host "----------------------------------------------" -ForegroundColor Cyan
Write-Host ""
