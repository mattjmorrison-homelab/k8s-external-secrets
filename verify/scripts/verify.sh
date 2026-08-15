#!/bin/sh
set -eu

apk add --no-cache netcat-openbsd >/dev/null

HOST="homelab-external-secrets-webhook.external-secrets.svc"
PORT="443"

if ! nc -z -w3 "$HOST" "$PORT"; then
  echo "FAIL: could not connect to $HOST:$PORT"
  exit 1
fi

echo "PASS: $HOST:$PORT is accepting connections"
