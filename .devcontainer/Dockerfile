# Use the official Ubuntu image as the base
FROM rocker/r-ver:4.4

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

RUN git config --system user.email "miguel.rodo@uct.ac.za" && \
    git config --system user.name "Miguel Rodo" && \
    git config --system credential.helper \
    '!f() { 
        sleep 1
        echo username=${GITHUB_USER:-TOKEN}
        echo password=${GH_TOKEN:-$GITHUB_TOKEN}
    }; f'

# Copy the `.devcontainer/renv` folder to the container
COPY .devcontainer/renv /usr/local/share/config-r/renv

# Set appropriate permissions
RUN chmod -R 755 /usr/local/share/config-r/renv
