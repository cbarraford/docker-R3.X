docker-R3.X
===========

Ubuntu 12.04 image with all versions of [R](http://www.r-project.org/) 3.X preinstalled.

All versions of R are compiled from source and placed in the `/opt` directory. Individually tagged versions of [this image](https://registry.hub.docker.com/u/cbarraford/r3x/) are built with a specific version of R enabled.

If you use the `latest` tag, no versions of R are configured to be in your `PATH`. To configure a specific version of to be used, link the executables to `/usr/bin`. Here is an example for R 3.1.1

```bash
ln -s /opt/R3.1.1/bin/R /usr/bin/R
ln -s /opt/R3.1.1/bin/Rscript /usr/bin/Rscript
```

Tagged images as specific versions, already have this done.

The LANG is set to use UTF-8 encoding so its internationally friendly.

The following package list is installed to support commonly used R packages that require system layer support.
 * sudo
 * lsb-release
 * libatlas3gf-base
 * texinfo
 * texlive
 * texlive-fonts-extra
 * texlive-latex-extra
 * biblatex
 * texlive-bibtex-extra
 * texlive-xetex
 * libxml2-dev
 * protobuf-compiler
 * libprotoc-dev
 * libmysqlclient15-dev
 * unixodbc
 * unixodbc-dev
 * libmyodbc
 * odbc-postgresql
 * tdsodbc
 * libgraphviz-dev
 * libproj-dev
 * libfftw3-dev
 * libnetcdf-dev
 * libproc-dev
 * libgdal1-dev
 * libcairo2
 * libcairo2-dev
 * libxt6
 * libxt-dev
 * jags
