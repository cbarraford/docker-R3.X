FROM ubuntu:12.04
MAINTAINER Chad Barraford <chad@rstudio.com>

# Enable apt mirrors
RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise-backports main restricted universe multiverse" >> /etc/apt/sources.list

# Add R apt repository
RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu precise/" >> /etc/apt/sources.list

# Update apt
RUN apt-get -y -qq update

RUN apt-get -y --force-yes install wget build-essential fortran77-compiler gfortran gfortran-4.6 libgfortran3 libreadline6 libreadline6-dev
RUN apt-get -y --force-yes --no-install-recommends install openjdk-7-jdk

# Install add-on packages
RUN apt-get -y --force-yes install sudo lsb-release libatlas3gf-base texinfo texlive texlive-fonts-extra texlive-latex-extra biblatex texlive-bibtex-extra texlive-xetex libxml2-dev protobuf-compiler libprotoc-dev libmysqlclient15-dev unixodbc unixodbc-dev libmyodbc odbc-postgresql tdsodbc libgraphviz-dev libproj-dev libfftw3-dev libnetcdf-dev libproc-dev libgdal1-dev libcairo2 libcairo2-dev libxt6 libxt-dev jags

# Set default locale
RUN update-locale --reset LANG=C.UTF-8

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
    echo "LANG=C.UTF-8" >> /opt/R3.0.0/lib/R/etc/Renviron.site

## Install R 3.0.1
RUN \
    cd /tmp && \
    wget http://cran.rstudio.com/src/base/R-3/R-3.0.1.tar.gz && \
    tar -zxvf R-3.0.1.tar.gz && \
    cd R-3.0.1 && \
    ./configure --with-x=no --prefix=/opt/R3.0.1/ && \
    make && \
    make check && \
    make install && \
    echo "LANG=C.UTF-8" >> /opt/R3.0.1/lib/R/etc/Renviron.site

## Install R 3.0.2
RUN \
    cd /tmp && \
    wget http://cran.rstudio.com/src/base/R-3/R-3.0.2.tar.gz && \
    tar -zxvf R-3.0.2.tar.gz && \
    cd R-3.0.2 && \
    ./configure --with-x=no --prefix=/opt/R3.0.2/ && \
    make && \
    make check && \
    make install && \
    echo "LANG=C.UTF-8" >> /opt/R3.0.2/lib/R/etc/Renviron.site

## Install R 3.0.3
RUN \
    cd /tmp && \
    wget http://cran.rstudio.com/src/base/R-3/R-3.0.3.tar.gz && \
    tar -zxvf R-3.0.3.tar.gz && \
    cd R-3.0.3 && \
    ./configure --with-x=no --prefix=/opt/R3.0.3/ && \
    make && \
    make check && \
    make install && \
    echo "LANG=C.UTF-8" >> /opt/R3.0.3/lib/R/etc/Renviron.site

## Install R 3.1.0
RUN \
    cd /tmp && \
    wget http://cran.rstudio.com/src/base/R-3/R-3.1.0.tar.gz && \
    tar -zxvf R-3.1.0.tar.gz && \
    cd R-3.1.0 && \
    ./configure --with-x=no --prefix=/opt/R3.1.0/ && \
    make && \
    make check && \
    make install && \
    echo "LANG=C.UTF-8" >> /opt/R3.1.0/lib/R/etc/Renviron.site

## Install R 3.1.1
RUN \
    cd /tmp && \
    wget http://cran.rstudio.com/src/base/R-3/R-3.1.1.tar.gz && \
    tar -zxvf R-3.1.1.tar.gz && \
    cd R-3.1.1 && \
    ./configure --with-x=no --prefix=/opt/R3.1.1/ && \
    make && \
    make check && \
    make install && \
    echo "LANG=C.UTF-8" >> /opt/R3.1.1/lib/R/etc/Renviron.site

## Cleanup source files
RUN rm -rf /tmp/R-3*
RUN rm -rf /tmp/R3*
