ARG POSTGRES_VERSION=latest
ARG ASGARD_VERSION=1.2.2

FROM postgres:${POSTGRES_VERSION}

LABEL org.opencontainers.image.source https://github.com/jdlom/asgard-postgresql
ARG ASGARD_VERSION

COPY asgard* /extension/
RUN /bin/bash -c "mv /extension/* $(ls -d /usr/share/postgresql/*/extension)"