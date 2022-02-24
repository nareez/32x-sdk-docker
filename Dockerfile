FROM amd64/ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y make wget zstd && \
    apt clean

WORKDIR /

RUN wget -qO- https://github.com/viciious/32XDK/releases/download/20190504/chillys-sega-devkit-20190504-opt.tar.zst \
| tar --use-compress-program=unzstd -xv

RUN apt purge -y wget zstd && apt -y autoremove && apt clean && rm -rf /var/lib/apt/lists/*

RUN mkdir /src

WORKDIR /src

ENTRYPOINT [ "make" ]
