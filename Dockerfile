FROM ubuntu:22.04

RUN apt update && \
    apt install -y \
        build-essential \
        bash \
        python3 \
        git \
        curl \
 && mkdir -p /home/root/
COPY *.sh /home/root/

