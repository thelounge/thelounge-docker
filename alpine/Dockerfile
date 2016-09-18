FROM mhart/alpine-node:6

ARG GIT_REV="master"

RUN apk add --no-cache openssh git

RUN git clone https://github.com/thelounge/lounge.git lounge-repo && \
  cd lounge-repo && \
  git reset --hard $GIT_REV && \
  npm install -g && \
  npm install && \
  npm run build && \
  rm -rf /usr/lib/node_modules/thelounge/client && \
  mv client/ /usr/lib/node_modules/thelounge/client && \
  cd && rm -rf lounge-repo

EXPOSE 9000
CMD lounge
