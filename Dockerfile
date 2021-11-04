FROM node:lts-bullseye

ENV NODE_ENV production

ENV THELOUNGE_HOME "/var/opt/thelounge"
VOLUME "${THELOUNGE_HOME}"

# Expose HTTP.
ENV PORT 9000
EXPOSE ${PORT}

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["thelounge", "start"]

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

# Install thelounge.
ARG THELOUNGE_VERSION=4.3.0-pre.6
RUN yarn --non-interactive --frozen-lockfile global add thelounge@${THELOUNGE_VERSION} && \
    yarn --non-interactive cache clean
