FROM cbarraford/r3x:base
MAINTAINER Chad Barraford <chad@rstudio.com>

ENV R_VERSION 3.0.1

# Install R
RUN apt-get install -y r-base-core=3.0.1-6precise0 r-base-dev=3.0.1-6precise0

# set UTF-8
RUN echo "LANG=C.UTF-8" >> /usr/lib/R/etc/Renviron.site
