FROM ubuntu:12.04
MAINTAINER Chad Barraford <chad@rstudio.com>

# enable apt mirrors
RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise-backports main restricted universe multiverse" >> /etc/apt/sources.list

# add R apt repository
RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu precise/" >> /etc/apt/sources.list

# update apt
RUN apt-get -y -qq update

RUN apt-get -y --force-yes install wget build-essential fortran77-compiler gfortran gfortran-4.6 libgfortran3 libreadline6 libreadline6-dev
RUN apt-get -y --force-yes --no-install-recommends install openjdk-7-jdk

## Install R 3.0.0
RUN \
    cd /tmp && \
    wget http://cran.rstudio.com/src/base/R-3/R-3.0.0.tar.gz && \
    tar -zxvf R-3.0.0.tar.gz && \
    cd R-3.0.0 && \
    ./configure --with-x=no --prefix=/opt/R3.0.0/ && \
    make && \
    make check && \
    make install && \

