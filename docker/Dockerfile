FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive
ARG PG_VERSIONS="9.5 9.6 10 11 12 13 14 15 16 17"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# hadolint ignore=DL3009
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        wget=1.21-1+deb11u1 \
        gnupg=2.2.27-2+deb11u2 \
        lsb-release=11.1.0 \
        ca-certificates=20210119 \
        && wget -qO - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
        && echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list \
        && apt-get update

# hadolint ignore=DL3008
RUN for v in $PG_VERSIONS; do \
      apt-get install -y --no-install-recommends "postgresql-client-$v"; \
    done

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
