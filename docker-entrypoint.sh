#!/bin/sh

if [ -d /home/lounge/data ]; then
    # pre 3.0.0 the volume mount point was defined at /home/lounge/data
    >&2 cat <<EOF
!!! ATTENTION !!!
Detected mounted volume at old path: /home/lounge/data.
The new path is: /var/opt/thelounge. Please update your volume bindings!
EOF
    exit 1
fi

if [ "$(id -u)" = '0' ]; then
    # use the node user by default
    if [ "$*" = "thelounge start" ]; then
        find "${THELOUNGE_HOME}" \! -user node -exec chown node '{}' +
    fi
    exec su node -c "$*"
else
    # otherwise, allow for a custom user (e.g. through --user CLI arg)
    exec "$@"
fi
