FROM cbarraford/r3x:base
MAINTAINER Chad Barraford <chad@rstudio.com>

ENV R_VERSION 3.1.2

# Install R
RUN apt-get -y --force-yes install r-base-core=3.1.2-1precise0 r-base-dev=3.1.2-1precise0

# set UTF-8
RUN echo "LANG=C.UTF-8" >> /usr/lib/R/etc/Renviron.site
