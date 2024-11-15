#!/bin/sh

# Get the number of notifications
count=$(swaync-client -c)

# Ensure count is a valid JSON number
# Output the JSON in a compact, single line format

echo "{\"count\": $count}" | jq --unbuffered --compact-output
