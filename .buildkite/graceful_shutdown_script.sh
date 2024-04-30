#!/bin/bash

# Trap SIGTERM
trap 'echo "SIGTERM received, simulating graceful shutdown..."; sleep 120; echo "Shutdown complete"; exit 0' SIGTERM

# Simulate long-running process
echo "Job started, running..."
sleep 600  # Adjust sleep as needed to keep the job running

echo "Job completed without interruption"
