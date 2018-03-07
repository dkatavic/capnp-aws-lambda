ARG NODE_VERSION=6.10.2
FROM iopipe/awslambda-npm-install
ARG CAPNP_VERSION=0.6.1
MAINTAINER Domagoj Katavic <dkatavic@vectra.ai>

# # Install capnproto
RUN curl -O https://capnproto.org/capnproto-c++-${CAPNP_VERSION}.tar.gz && \
  tar zxf capnproto-c++-${CAPNP_VERSION}.tar.gz && \
  cd capnproto-c++-${CAPNP_VERSION} && \
  ./configure && \
  make -j6 check && \
  make install

# Add docker-entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

WORKDIR /var/task

ENTRYPOINT ["docker-entrypoint.sh"]
