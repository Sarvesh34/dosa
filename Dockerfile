# Use Ubuntu as the base image
FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Install required dependencies (optional, if any)
RUN apt-get update && apt-get install -y \
    grep \
    && rm -rf /var/lib/apt/lists/*

# Copy build and test scripts into the container
COPY build.sh /app/build.sh
COPY test.sh /app/test.sh

# Give execute permission to scripts
RUN chmod +x /app/build.sh /app/test.sh

# Build the "Car" as part of the container setup
RUN /app/build.sh

# Define the default command to run tests when the container starts
CMD ["/app/test.sh"]
