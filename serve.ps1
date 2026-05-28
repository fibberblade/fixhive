# FixHive local dev server — zero dependencies, pure PowerShell + .NET
# Usage: Right-click > Run with PowerShell  OR  powershell -ExecutionPolicy Bypass -File serve.ps1

$port   = 8080
$root   = $PSScriptRoot   # folder this script lives in
$prefix = "http://localhost:$port/"

$mime = @{
  ".html"  = "text/html; charset=utf-8"
  ".htm"   = "text/html; charset=utf-8"
  ".css"   = "text/css; charset=utf-8"
  ".js"    = "application/javascript; charset=utf-8"
  ".json"  = "application/json; charset=utf-8"
  ".svg"   = "image/svg+xml"
  ".png"   = "image/png"
  ".jpg"   = "image/jpeg"
  ".jpeg"  = "image/jpeg"
  ".webp"  = "image/webp"
  ".ico"   = "image/x-icon"
  ".gif"   = "image/gif"
  ".woff"  = "font/woff"
  ".woff2" = "font/woff2"
  ".ttf"   = "font/ttf"
  ".xml"   = "application/xml; charset=utf-8"
  ".txt"   = "text/plain; charset=utf-8"
  ".pdf"   = "application/pdf"
}

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add($prefix)
$listener.Start()

Write-Host ""
Write-Host "  FixHive dev server running" -ForegroundColor Cyan
Write-Host "  -----------------------------------------------" -ForegroundColor DarkGray
Write-Host "  Local:  http://localhost:$port/" -ForegroundColor Green
Write-Host "  Folder: $root" -ForegroundColor DarkGray
Write-Host "  -----------------------------------------------" -ForegroundColor DarkGray
Write-Host "  Press Ctrl+C to stop" -ForegroundColor Yellow
Write-Host ""

# Open browser automatically
Start-Process "http://localhost:$port/"

try {
  while ($listener.IsListening) {
    $ctx  = $listener.GetContext()
    $req  = $ctx.Request
    $resp = $ctx.Response

    $urlPath = $req.Url.LocalPath.TrimStart("/")
    if ($urlPath -eq "" -or $urlPath -eq "/") { $urlPath = "index.html" }

    $filePath = Join-Path $root $urlPath

    # Directory index fallback
    if ((Test-Path $filePath -PathType Container)) {
      $filePath = Join-Path $filePath "index.html"
    }

    if (Test-Path $filePath -PathType Leaf) {
      $ext         = [System.IO.Path]::GetExtension($filePath).ToLower()
      $contentType = if ($mime.ContainsKey($ext)) { $mime[$ext] } else { "application/octet-stream" }
      $bytes       = [System.IO.File]::ReadAllBytes($filePath)

      $resp.StatusCode        = 200
      $resp.ContentType       = $contentType
      $resp.ContentLength64   = $bytes.Length
      $resp.Headers.Add("Cache-Control", "no-cache")
      $resp.OutputStream.Write($bytes, 0, $bytes.Length)

      Write-Host "  200  $($req.Url.LocalPath)" -ForegroundColor DarkGray
    } else {
      $body  = [System.Text.Encoding]::UTF8.GetBytes("<h2>404 — Not found: $urlPath</h2>")
      $resp.StatusCode        = 404
      $resp.ContentType       = "text/html"
      $resp.ContentLength64   = $body.Length
      $resp.OutputStream.Write($body, 0, $body.Length)

      Write-Host "  404  $($req.Url.LocalPath)" -ForegroundColor Red
    }

    $resp.OutputStream.Close()
  }
} finally {
  $listener.Stop()
  Write-Host "`n  Server stopped." -ForegroundColor Yellow
}
