FROM rocker/tidyverse


# Add ubuntu helper libraries via apt
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
	curl \
	gnupg2 \
	libcurl4-openssl-dev \
	libpq-dev \
	libssl-dev \
	openssh-server \
	software-properties-common \
	libxml2-dev \
	r-cran-runit \
    libglpk-dev \
    gdebi-core

# Add tlverse R libraries (requires a GITHUB_PAT to be set in the host env for now)
ARG GITHUB_PAT
RUN export GITHUB_PAT=$GITHUB_PAT
RUN R -e "devtools::install_github('tlverse/tlverse')"
RUN export GITHUB_PAT=""