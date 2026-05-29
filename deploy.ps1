# ============================================================
#  FixHive Deploy Script
#  Usage:  powershell -File deploy.ps1
#          powershell -File deploy.ps1 -Message "your commit message"
#
#  Step 1 – Upload every changed file to myfixhive.ae via FTP
#  Step 2 – Git commit + push to GitHub
#
#  Credentials are loaded from deploy-creds.ps1 (gitignored).
# ============================================================

param(
    [string]$Message = ""
)

Set-StrictMode -Off
$ErrorActionPreference = 'Stop'

# ── Load credentials ─────────────────────────────────────────
$credsFile = Join-Path $PSScriptRoot 'deploy-creds.ps1'
if (-not (Test-Path $credsFile)) {
    Write-Host "ERROR: deploy-creds.ps1 not found." -ForegroundColor Red
    Write-Host "Create it with: `$ftpUser, `$ftpPass, `$gitToken" -ForegroundColor Yellow
    exit 1
}
. $credsFile

# ── Config ───────────────────────────────────────────────────
$ftpHost   = 'ftp.myfixhive.ae'
$gitRemote = "https://$gitToken@github.com/fibberblade/fixhive.git"
$localBase = $PSScriptRoot
# ─────────────────────────────────────────────────────────────

function Write-Header($text) {
    Write-Host ""
    Write-Host ("=" * 58) -ForegroundColor Cyan
    Write-Host "  $text" -ForegroundColor Cyan
    Write-Host ("=" * 58) -ForegroundColor Cyan
}

function Upload-File($rel) {
    $localPath  = Join-Path $localBase $rel
    $remotePath = "ftp://$ftpHost/$rel"

    $req = [System.Net.FtpWebRequest]::Create($remotePath)
    $req.Method      = [System.Net.WebRequestMethods+Ftp]::UploadFile
    $req.Credentials = New-Object System.Net.NetworkCredential($ftpUser, $ftpPass)
    $req.EnableSsl   = $false
    $req.UsePassive  = $true
    $req.UseBinary   = $true
    $req.KeepAlive   = $false

    $bytes = [System.IO.File]::ReadAllBytes($localPath)
    $req.ContentLength = $bytes.Length
    $stream = $req.GetRequestStream()
    $stream.Write($bytes, 0, $bytes.Length)
    $stream.Close()
    $resp = $req.GetResponse()
    $resp.Close()
}

function Ensure-FtpDir($dir) {
    try {
        $req = [System.Net.FtpWebRequest]::Create("ftp://$ftpHost/$dir")
        $req.Method      = [System.Net.WebRequestMethods+Ftp]::MakeDirectory
        $req.Credentials = New-Object System.Net.NetworkCredential($ftpUser, $ftpPass)
        $req.EnableSsl   = $false
        $req.UsePassive  = $true
        $resp = $req.GetResponse()
        $resp.Close()
    } catch {
        # Directory likely already exists — ignore
    }
}

# ════════════════════════════════════════════════════════════
#  STEP 1 — FTP UPLOAD
# ════════════════════════════════════════════════════════════
Write-Header "STEP 1 — FTP Upload to myfixhive.ae"

Set-Location $localBase

# Collect changed files (unstaged + staged + untracked)
$changedFiles = git diff --name-only HEAD 2>$null
$stagedFiles  = git diff --name-only --cached 2>$null
$newFiles     = git ls-files --others --exclude-standard 2>$null

$allChanged = @()
if ($changedFiles) { $allChanged += $changedFiles }
if ($stagedFiles)  { $allChanged += $stagedFiles  }
if ($newFiles)     { $allChanged += $newFiles      }
$allChanged = $allChanged | Sort-Object -Unique | Where-Object { $_ -ne '' }

if ($allChanged.Count -eq 0) {
    Write-Host "No unstaged changes detected — uploading all tracked site files..." -ForegroundColor Yellow
    $allChanged = git ls-files 2>$null | Where-Object {
        $_ -match '\.(html|css|js|svg|json|webp|png|jpg|jpeg|ico|xml|txt)$'
    }
}

Write-Host "Files to upload: $($allChanged.Count)"

# Ensure subdirectories exist on FTP
$dirs = $allChanged | ForEach-Object { Split-Path $_ -Parent } |
        Where-Object { $_ -ne '' } | Sort-Object -Unique
foreach ($d in $dirs) {
    Ensure-FtpDir ($d -replace '\\', '/')
}

$ok = 0; $fail = 0; $failList = @()
foreach ($rel in $allChanged) {
    $localPath = Join-Path $localBase $rel
    if (-not (Test-Path $localPath)) { continue }  # skip deleted files

    $relFwd = $rel -replace '\\', '/'
    try {
        Upload-File $relFwd
        Write-Host "  [OK] $relFwd" -ForegroundColor Green
        $ok++
    } catch {
        Write-Host "  [FAIL] $relFwd — $_" -ForegroundColor Red
        $fail++
        $failList += $relFwd
    }
}

Write-Host ""
Write-Host "FTP result: $ok uploaded, $fail failed" -ForegroundColor $(if ($fail -eq 0) {'Green'} else {'Yellow'})
if ($failList.Count -gt 0) {
    Write-Host "Failed files:" -ForegroundColor Red
    $failList | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
}

# ════════════════════════════════════════════════════════════
#  STEP 2 — GIT COMMIT + PUSH
# ════════════════════════════════════════════════════════════
Write-Header "STEP 2 — Git Commit + Push to GitHub"

Set-Location $localBase
git add -A 2>&1 | Out-Null

$status = git status --porcelain 2>$null
if (-not $status) {
    Write-Host "Nothing to commit — working tree clean." -ForegroundColor Yellow
} else {
    if (-not $Message) {
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
        $Message   = "Site update $timestamp"
    }

    $commitMsg = "$Message`n`nCo-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>"
    git commit -m $commitMsg 2>&1 | ForEach-Object { Write-Host "  $_" }
    Write-Host ""

    Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
    $pushResult = git push $gitRemote main 2>&1
    $pushResult | ForEach-Object { Write-Host "  $_" }

    if ($LASTEXITCODE -eq 0) {
        Write-Host "Push successful!" -ForegroundColor Green
    } else {
        Write-Host "Push failed — check token / network." -ForegroundColor Red
    }
}

# ════════════════════════════════════════════════════════════
Write-Header "DONE"
Write-Host ""
Write-Host "  Website : https://myfixhive.ae"                    -ForegroundColor White
Write-Host "  GitHub  : https://github.com/fibberblade/fixhive"  -ForegroundColor White
Write-Host ""
