ARG POSTGRES_VERSION=latest
ARG ASGARD_VERSION=1.2.2

FROM postgres:${POSTGRES_VERSION}

LABEL org.opencontainers.image.source https://github.com/jdlom/asgard-postgresql
ARG ASGARD_VERSION

COPY asgard--${ASGARD_VERSION}.sql /docker-entrypoint-initdb.d
