FROM node:22-alpine

ARG THELOUNGE_VERSION=4.4.3

LABEL org.opencontainers.image.title "Official The Lounge image"
LABEL org.opencontainers.image.description "Official Docker image for The Lounge, a modern web IRC client designed for self-hosting."
LABEL org.opencontainers.image.authors "The Lounge #thelounge @irc.libera.chat"
LABEL org.opencontainers.image.url "https://github.com/thelounge/thelounge-docker"
LABEL org.opencontainers.image.source "https://github.com/thelounge/thelounge-docker"
LABEL org.opencontainers.image.version "${THELOUNGE_VERSION}"
LABEL org.opencontainers.image.licenses "MIT"

EXPOSE 9000
ENV THELOUNGE_HOME "/var/opt/thelounge"

ENV NODE_ENV production
RUN apk --update --no-cache --virtual build-deps add python3 build-base git && \
    ln -sf python3 /usr/bin/python && \
    yarn --non-interactive --frozen-lockfile global add thelounge@${THELOUNGE_VERSION} && \
    yarn --non-interactive cache clean && \
    apk del --purge build-deps && \
    rm -rf /root/.cache /tmp /usr/bin/python

RUN install -d -o node -g node "${THELOUNGE_HOME}"
# order of the directives matters, keep VOLUME below the dir creation
VOLUME "${THELOUNGE_HOME}"

USER node:node
ENTRYPOINT ["/usr/local/bin/thelounge"]
CMD ["start"]
