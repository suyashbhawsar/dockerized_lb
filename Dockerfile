FROM debian:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y live-build git && \
    rm -rf /var/lib/apt/lists/*

ARG CACHEBUST=1
RUN git clone https://github.com/suyashbhawsar/dockerized_lb.git /opt/dockerized_lb
WORKDIR /opt/dockerized_lb
RUN lb config