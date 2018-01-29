FROM node:6

ARG THELOUNGE_VERSION=2.6.0
ENV NODE_ENV production

ENV THELOUNGE_HOME "/home/lounge/data"

# Install common TTY text editors to allow editing files from within the container
RUN apt-get update && \
    apt-get install -y vim nano && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p "${THELOUNGE_HOME}"
VOLUME "${THELOUNGE_HOME}"

# Install thelounge.
RUN npm install -g thelounge@${THELOUNGE_VERSION} && \
    npm cache clean

# Expose HTTP.
ENV PORT 9000
EXPOSE ${PORT}

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

CMD ["thelounge", "start"]

ENTRYPOINT ["docker-entrypoint.sh"]
