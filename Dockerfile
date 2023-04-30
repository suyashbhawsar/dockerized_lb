# Set the base image
FROM debian:latest

# Install dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y live-build git && \
    rm -rf /var/lib/apt/lists/*

# Set the output directory
ENV LB_OUTPUT_DIR=/mnt/output

# Mount the output directory as a Docker volume
VOLUME /mnt/output

# Set the working directory to a temporary directory
WORKDIR /opt/custom-config