#!/bin/bash
set -euo pipefail

# Function to safely access BUILDKITE_MESSAGE
get_buildkite_message() {
  if [ -z "${BUILDKITE_MESSAGE:-}" ]; then
    echo "No commit message provided"
  else
    echo "${BUILDKITE_MESSAGE}"
  fi
}

# Use the function to get the commit message
commit_message=$(get_buildkite_message)

# Your script continues here...
echo "Commit message: ${commit_message}"

# Simulate some work
echo "Running some commands..."
sleep 1
echo "Finished!"
