#!/bin/sh
# Revive the preview dev server. Idempotent: exit if it is already healthy.
if curl -sf -o /dev/null --max-time 1 http://127.0.0.1:8080/; then
  exit 0
fi
cd /workspace
npm run dev > /tmp/rsearn-dev.log 2>&1 &
