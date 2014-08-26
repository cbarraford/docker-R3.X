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

RUN apt-get -y --force-yes --no-install-recommends install openjdk-7-jdk

# Install add-on packages
RUN apt-get -y --force-yes install sudo lsb-release curl wget libatlas3gf-base texinfo texlive texlive-fonts-extra texlive-latex-extra biblatex texlive-bibtex-extra texlive-xetex libxml2-dev protobuf-compiler libprotoc-dev libmysqlclient15-dev unixodbc unixodbc-dev libmyodbc odbc-postgresql tdsodbc libgraphviz-dev libproj-dev libfftw3-dev libnetcdf-dev libproc-dev libgdal1-dev libcairo2 libcairo2-dev libxt6 libxt-dev jags

# Set default locale
RUN update-locale --reset LANG=C.UTF-8
