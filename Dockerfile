FROM debian:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y live-build git && \
    rm -rf /var/lib/apt/lists/*

# Mount the output directory as a Docker volume
VOLUME /mnt/output

# Set the working directory to a temporary directory
WORKDIR /opt/dockerized_lb

RUN git clone https://github.com/suyashbhawsar/dockerized_lb.git .