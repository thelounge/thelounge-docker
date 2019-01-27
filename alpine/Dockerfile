FROM node:10-alpine

ENV NODE_ENV production

ENV THELOUNGE_HOME "/var/opt/thelounge"
VOLUME "${THELOUNGE_HOME}"

# Expose HTTP.
ENV PORT 9000
EXPOSE ${PORT}

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["thelounge", "start"]

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN apk add --no-cache \
    'su-exec>=0.2'

# Install thelounge.
ARG THELOUNGE_VERSION=3.0.0-rc.6
RUN yarn --non-interactive global add thelounge@${THELOUNGE_VERSION} && \
    yarn --non-interactive cache clean
