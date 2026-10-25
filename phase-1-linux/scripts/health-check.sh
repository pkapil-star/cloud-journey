#!/bin/bash
# Simple health-check script for practice.
# Usage: ./health-check.sh http://localhost:3000/health

URL="${1:-http://localhost:3000/health}"

if curl -sf "$URL" > /dev/null; then
  echo "App is UP: $URL"
else
  echo "App is DOWN: $URL"
  exit 1
fi
