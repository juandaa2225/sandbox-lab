#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-8000}"
URL="http://127.0.0.1:${PORT}/index.html"

echo "Iniciando servidor local en ${URL}"

open_browser() {
  if command -v open >/dev/null 2>&1; then
    open "$URL" >/dev/null 2>&1 || true
  elif command -v xdg-open >/dev/null 2>&1; then
    xdg-open "$URL" >/dev/null 2>&1 || true
  elif command -v powershell.exe >/dev/null 2>&1; then
    powershell.exe -NoProfile -Command "Start-Process '$URL'" >/dev/null 2>&1 || true
  fi
}

open_browser

python3 -m http.server "$PORT"
