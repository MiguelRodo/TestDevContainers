FROM rocker/r-ver:4.4.0

RUN install2.r --error --skipinstalled --ncpus -1 \
    renv \
    && rm -rf /tmp/downloaded_packages

WORKDIR /project
COPY renv.lock renv.lock

# approach two
RUN mkdir -p renv
COPY .Rprofile .Rprofile
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json

RUN R -e "renv::restore()"
