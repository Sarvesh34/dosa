#!/bin/bash

# Create a sample directory
mkdir -p /app/sample
cd /app/sample

# Create car.txt with required components
touch car.txt
echo "chassis" >> car.txt
echo "sterring" >> car.txt
echo "wheel" >> car.txt

# Print output
echo "Build completed: Car components created!"
ls -l /app/sample

