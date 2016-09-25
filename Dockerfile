FROM node:4

ENV LOUNGE_VERSION 2.0.0
ENV NODE_ENV production

ARG user=lounge
ARG group=lounge
ARG uid=1000
ARG gid=1000

ENV LOUNGE_HOME "/home/lounge/data"

# Create a non-root user for lounge to run in.
RUN groupadd --gid ${gid} ${group} \
      && useradd --create-home --uid ${uid} --gid ${gid} ${user}

RUN mkdir -p "${LOUNGE_HOME}"
RUN chown -R ${user}:${group} "${LOUNGE_HOME}"
VOLUME "${LOUNGE_HOME}"

# Install thelounge.
RUN npm install -g thelounge@${LOUNGE_VERSION}

# Expose HTTP.
ENV PORT 9000
EXPOSE ${PORT}

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

# Drop root.
USER ${user}

ENTRYPOINT ["docker-entrypoint.sh"]
