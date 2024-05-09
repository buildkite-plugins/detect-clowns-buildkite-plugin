#!/bin/bash

# Check if the retry count environment variable is set and greater than 0
if [[ "$BUILDKITE_RETRY_COUNT" -gt 0 ]]; then
    echo "This is a retry, sleeping for 30 seconds."
    sleep 30
else
    echo "This is the first attempt, sleeping for 120 seconds."
    sleep 120
fi
