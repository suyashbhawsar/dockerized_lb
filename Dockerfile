FROM debian:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y live-build git && \
    rm -rf /var/lib/apt/lists/*

# Mount the output directory as a Docker volume
VOLUME /mnt/output

RUN cd /opt
ARG CACHEBUST=1
RUN git clone https://github.com/suyashbhawsar/dockerized_lb.git .

# Set the working directory to a temporary directory
WORKDIR /opt/dockerized_lb