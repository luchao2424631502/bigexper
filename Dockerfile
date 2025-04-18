FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        cmake \
        libtbb-dev\
        libaio-dev\
        libboost-fiber-dev\
        git \
        wget \
        pkg-config \
        vim

WORKDIR /app

COPY ./RisGraph /app
COPY ./Wiki-Vote.txt /app/data.txt

RUN mkdir build && cd ./build && cmake .. && make -j52