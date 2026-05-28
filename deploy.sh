#!/bin/bash
# ============================================================
# deploy.sh — myfixhive.ae deploy script
# Usage: bash deploy.sh
# ============================================================

FTP_HOST="ftp.myfixhive.ae"
FTP_USER="myuploadaccountFH@myfixhive.ae"
FTP_PASS="FixHive2026New"
FTP_ROOT="ftp://$FTP_HOST"

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

ok()   { echo -e "${GREEN}✓ $1${NC}"; }
fail() { echo -e "${RED}✗ $1${NC}"; exit 1; }
info() { echo -e "${YELLOW}→ $1${NC}"; }

cd "$(dirname "$0")"

# ── 1. Pull latest from GitHub ───────────────────────────────
info "Pulling latest from GitHub..."
git pull origin main || fail "git pull failed — resolve conflicts first"
ok "Up to date with GitHub"

# ── 2. Check for uncommitted local changes ───────────────────
CHANGED=$(git status --short)
if [ -n "$CHANGED" ]; then
  info "Uncommitted changes found — staging and committing..."
  git add -A
  echo ""
  read -p "  Commit message: " MSG
  [ -z "$MSG" ] && MSG="Deploy update"
  git commit -m "$MSG

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>"
  ok "Committed"
fi

# ── 3. Upload all HTML files via FTP ────────────────────────
info "Uploading files to myfixhive.ae..."

upload() {
  local LOCAL="$1"
  local REMOTE="$2"
  curl -fS -T "$LOCAL" "$FTP_ROOT/$REMOTE" --user "$FTP_USER:$FTP_PASS" 2>&1
  if [ $? -eq 0 ]; then
    ok "$REMOTE"
  else
    fail "Upload failed: $REMOTE"
  fi
}

# English pages
for f in *.html; do
  upload "$f" "$f"
done

# Arabic pages
for f in ar/*.html; do
  upload "$f" "$f"
done

# ── 4. Push to GitHub ────────────────────────────────────────
info "Pushing to GitHub..."
git push origin main || fail "git push failed"
ok "Pushed to GitHub"

echo ""
echo -e "${GREEN}============================================${NC}"
echo -e "${GREEN}  Deploy complete — myfixhive.ae is live!  ${NC}"
echo -e "${GREEN}============================================${NC}"
