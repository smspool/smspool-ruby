#!/usr/bin/env bash
# Builds the SDK and calls the live API: a public endpoint, a form POST,
# and an authenticated one with a bad key (which must fail with 401/403).
set -euo pipefail
cd "$(dirname "$0")/.."
# Build outside the repo, so the gem file never lands in the working tree.
out=$(mktemp -d)
trap 'rm -rf "$out"' EXIT
gem build --quiet smspool.gemspec --output "$out/smspool.gem"
gem install --no-document "$out/smspool.gem"
ruby smoke/smoke.rb
