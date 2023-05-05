#!/bin/bash
set -euo pipefail

# Get the Git commit SHA for the current build
commit_sha=$(git rev-parse HEAD)

# Set the buildkite:git:commit metadata key
echo "$commit_sha" | buildkite-agent meta-data set buildkite:git:commit

echo "--- Searching for Clowns 🤡"
echo "$BUILDKITE_BUILD_CHECKOUT_PATH"

if grep -inr -C1 "🤡" . ; then
  echo "^^^ +++"
  echo "+++ :warning: Detected clowns! 🔪"
  exit 1
fi