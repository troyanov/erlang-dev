FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y \
    install curl \
    build-essential \
    git \
    packaging-dev \
    libssl-dev \
    openssl \
    libncurses5-dev

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
RUN apt-get -y install erlang