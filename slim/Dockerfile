FROM node:6-slim

ENV LOUNGE_VERSION 2.2.2
ENV NODE_ENV production

ENV LOUNGE_HOME "/home/lounge/data"

RUN useradd -m lounge
RUN mkdir -p "${LOUNGE_HOME}"
RUN chown lounge:lounge "${LOUNGE_HOME}"

VOLUME "${LOUNGE_HOME}"

# Install thelounge.
RUN npm install -g thelounge@${LOUNGE_VERSION} && \
    npm cache clean

# Expose HTTP.
ENV PORT 9000
EXPOSE ${PORT}

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

USER lounge

CMD ["lounge", "start"]

ENTRYPOINT ["docker-entrypoint.sh"]
