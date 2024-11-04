# Use the official Ubuntu image as the base
FROM ghcr.io/rocker-org/devcontainer/geospatial:4.4

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Copy the `.devcontainer/renv` folder if it exists
RUN if [ -d ".devcontainer/renv" ]; then \
    mkdir -p /usr/local/share/config-r/renv && \
    cp -r .devcontainer/renv /usr/local/share/config-r/renv; \
    chmod -R 755 /usr/local/share/config-r/renv; \
    fi
