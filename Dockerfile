FROM ubuntu:12.04
MAINTAINER Chad Barraford <chad@rstudio.com>

# add R apt repository
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu precise/" >> /etc/apt/sources.list.d/cran-rstudio.list

# Update apt
RUN apt-get update -qq && \
    apt-get install -y \
    biblatex \
    curl \
    jags \
    libatlas3gf-base \
    libcairo2 \
    libcairo2-dev \
    libfftw3-dev \
    libgdal1-dev \
    libgraphviz-dev \
    libmyodbc \
    libmysqlclient15-dev \
    libnetcdf-dev \
    libproc-dev \
    libproj-dev \
    libprotoc-dev \
    libxml2-dev \
    libxt-dev \
    libxt6 \
    lsb-release \
    odbc-postgresql \
    protobuf-compiler \
    sudo \
    tdsodbc \
    texinfo \
    texlive \
    texlive-bibtex-extra \
    texlive-fonts-extra \
    texlive-latex-extra \
    texlive-xetex \
    unixodbc \
    unixodbc-dev \
    wget

RUN apt-get install -y --no-install-recommends openjdk-7-jdk

# Set default locale
RUN update-locale --reset LANG=C.UTF-8
