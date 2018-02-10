FROM node:6-slim

ENV NODE_ENV production

ENV THELOUNGE_HOME "/home/lounge/data"
VOLUME "${THELOUNGE_HOME}"

# Expose HTTP.
ENV PORT 9000
EXPOSE ${PORT}

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["thelounge", "start"]

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

# Install thelounge.
ARG THELOUNGE_VERSION=2.7.0
RUN npm install -g thelounge@${THELOUNGE_VERSION} && \
    npm cache clean
