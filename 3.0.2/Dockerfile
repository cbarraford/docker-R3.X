FROM cbarraford/r3x:base
MAINTAINER Chad Barraford <chad@rstudio.com>

ENV R_VERSION 3.0.2

# Install R from source
RUN \
    cd /tmp && \
    wget http://cran.rstudio.com/src/base/R-3/R-$R_VERSION.tar.gz && \
    tar -zxvf R-$R_VERSION.tar.gz && \
    cd R-$R_VERSION && \
    ./configure --with-x=no --prefix=/opt/R$R_VERSION/ && \
    make && \
    make check && \
    make install

# set UTF-8
RUN echo "LANG=C.UTF-8" >> /opt/R$R_VERSION/lib/R/etc/Renviron.site

# Setup links
RUN ln -s /opt/R$R_VERSION/bin/R /usr/bin/R
RUN ln -s /opt/R$R_VERSION/bin/Rscript /usr/bin/Rscript

## Cleanup source files
RUN rm -rf /tmp/R-$R_VERSION.tar.gz /tmp/R-$R_VERSION
