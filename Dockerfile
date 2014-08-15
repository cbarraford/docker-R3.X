FROM ubuntu:12.04
MAINTAINER Chad Barraford <chad@rstudio.com>

# update apt
RUN apt-get -y -qq update

RUN apt-get -y --force-yes --no-install-recommends install openjdk-7-jdk wget build-essential fortran77-compiler gfortran gfortran-4.6 libgfortran3 libreadline6 libreadline6-dev xorg-dev

## Install R 3.0.0
RUN \
    cd /tmp && \
    wget http://cran.rstudio.com/src/base/R-3/R-3.0.0.tar.gz && \
    tar -zxvf R-3.0.0.tar.gz && \
    cd R-3.0.0 && \
    ./configure --prefix=/opt/R3.0.0/ && \
    make && \
    make check && \
    make install && \

