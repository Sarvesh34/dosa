#!/bin/bash
set -e  # Exit immediately if any command fails

# Check if car.txt exists
if [ ! -f "/app/sample/car.txt" ]; then
    echo "ERROR: car.txt not found!"
    exit 1
fi

# Display contents
cat /app/sample/car.txt

# Run tests - will fail if a word is missing
grep -q "chassis" /app/sample/car.txt
grep -q "sterring" /app/sample/car.txt
grep -q "wheel" /app/sample/car.txt

echo "✅ All required components exist in car.txt!"

tail -f /dev/null

