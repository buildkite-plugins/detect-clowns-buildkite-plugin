#!/bin/bash

# Run your command
bash.sh

# Capture the exit status
exit_status=$?

# Check if the exit status is not what you want to soft fail
if [[ $exit_status -ne 42 ]]; then
    exit 99  # Choose an exit status that represents all other "soft fail" statuses
else
    exit $exit_status
fi
