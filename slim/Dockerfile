FROM node:6-slim

ARG THELOUNGE_VERSION=2.6.0
ENV NODE_ENV production

ENV THELOUNGE_HOME "/home/lounge/data"

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
