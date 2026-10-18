#!/usr/bin/env bash
# Pins the gem's file list. The generated gemspec packs every file under the
# repo (`find *`), which picks up build output such as vendor/bundle or a
# built .gem, and RubyGems refuses a gem that contains itself.
set -euo pipefail
cd "$(dirname "$0")/.."
python3 - smspool.gemspec <<'PY'
import re, sys
path = sys.argv[1]
spec = open(path).read()
spec, n_files = re.subn(r"^(\s*s\.files\s*=).*$", r'\1 Dir["lib/**/*.rb"] + ["README.md", "LICENSE"]', spec, count=1, flags=re.M)
spec, n_tests = re.subn(r"^(\s*s\.test_files\s*=).*$", r"\1 []", spec, count=1, flags=re.M)
assert n_files == 1 and n_tests == 1, "gemspec layout changed; update scripts/post-generate.sh"
open(path, "w").write(spec)
PY
