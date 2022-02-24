# 32x-sdk-docker
Docker container for compiling Sega 32X code based on Chilly Willy's devkit
http://gendev.spritesmind.net/forum/viewtopic.php?t=3024

Precompiled devkit from https://github.com/viciious/32XDK

## Install

Clone repo:

    git clone https://github.com/nareez/32x-sdk-docker.git
    cd 32x-sdk-docker

Build container:
    
    docker build -t 32xsdk .

Make your project:
    
    docker run --rm -v $PWD:/src -t 32xsdk

You can pass make parameters, ex:
    
    docker run --rm -v $PWD:/src -t 32xsdk clean
    docker run --rm -v $PWD:/src -t 32xsdk -f Makefile.mars
