docker-R3.X
===========

Ubuntu 12.04 image with [R](http://www.r-project.org/) 3.X preinstalled. Individually tagged versions of [this image](https://registry.hub.docker.com/u/cbarraford/r3x/) are built with a specific version of R installed.

If you use the `latest` tag, you'll have the latest version of R which currently is 3.1.1.

The LANG is set to use UTF-8 encoding so its internationally friendly.

The following package list is installed to support commonly used R packages that have system layer dependencies.

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
