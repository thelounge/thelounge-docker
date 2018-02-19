FROM node:6

ENV NODE_ENV production

ENV THELOUNGE_HOME "/home/lounge/data"
VOLUME "${THELOUNGE_HOME}"

# Expose HTTP.
ENV PORT 9000
EXPOSE ${PORT}

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["thelounge", "start"]

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

# Install common TTY text editors to allow editing files from within the container
RUN apt-get update && \
    apt-get install -y vim nano && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install thelounge.
ARG THELOUNGE_VERSION=2.7.1
RUN npm install -g thelounge@${THELOUNGE_VERSION} && \
    npm cache clean
