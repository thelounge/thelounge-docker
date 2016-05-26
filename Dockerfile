FROM node:4

ENV LOUNGE_VERSION 1.5.0
ENV NODE_ENV production

ARG user=lounge
ARG group=lounge
ARG uid=1000
ARG gid=1000

ENV LOUNGE_HOME "/home/lounge"
ENV LOUNGE_DATA "${LOUNGE_HOME}/data"
ENV LOUNGE_SRC "${LOUNGE_HOME}/src"

# Create a non-root user for lounge to run in.
RUN groupadd --gid ${gid} ${group} \
      && useradd --home "${LOUNGE_HOME}" --create-home --uid ${uid} --gid ${gid} ${user}

VOLUME "${LOUNGE_DATA}"
RUN chown -R ${user} "${LOUNGE_DATA}"

# Drop root.
USER ${user}

# Install thelounge.
RUN mkdir -p "${LOUNGE_SRC}"
WORKDIR "${LOUNGE_SRC}"
RUN curl -L $(npm view thelounge@${LOUNGE_VERSION} dist.tarball) | tar --strip-components 1 -xzf -
RUN npm install

# Expose HTTP.
ENV PORT 9000
EXPOSE ${PORT}

# Don't use an entrypoint here. It makes debugging difficult.
CMD node index.js --home "$LOUNGE_DATA"
