#!/bin/sh

if [ "$1" = "thelounge" ] && [ "$(id -u)" = '0' ]; then
    find "${THELOUNGE_HOME}" \! -user node -exec chown node '{}' +
    exec su node -c "$*"
fi

exec "$@"
