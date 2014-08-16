docker-R3.X
===========

Ubuntu 12.04 image with all versions of [R](http://www.r-project.org/) 3.X preinstalled.

All versions of R are compiled from source and placed in the `/opt` directory. Individually tagged versions of the [image](https://registry.hub.docker.com/u/cbarraford/r3x/) are built with a specific version of R enabled.

If you use the `latest` tag, no versions of R are configured to be in your `PATH`. Do configure a specific version of to be used, link the executables to `/usr/bin`. Here is an example for R 3.1.1

```bash
ln -s /usr/bin/R /opt/R3.1.1/bin/R
ln -s /usr/bin/Rscript /opt/R3.1.1/bin/Rscript
```

Tagged images as specific versions have already done this.
