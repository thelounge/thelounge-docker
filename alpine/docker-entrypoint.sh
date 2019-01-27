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

if [ ! -z "$HOST" ]; then
    CONF_OPT_HOST="-c host=$HOST"
fi
if [ ! -z "$PORT" ]; then
    CONF_OPT_PORT="-c port=$PORT"
fi
if [ ! -z "$BIND" ]; then
    CONF_OPT_BIND="-c bind=$BIND"
fi

if [ "$*" = "thelounge start" ]; then
    # if the supplied command is the default (see the CMD directive in Dockerfile), append any
    # optional flags defined via environment variables
    if [ "$(id -u)" = '0' ]; then
        find "${THELOUNGE_HOME}" \! -user node -exec chown node '{}' +
        # use the node user by default
        exec su-exec node "$@" \
            $CONF_OPT_HOST \
            $CONF_OPT_PORT \
            $CONF_OPT_BIND \
            ;
    else
        # otherwise, allow for a custom user (e.g. through --user CLI arg)
        exec "$@" \
            $CONF_OPT_HOST \
            $CONF_OPT_PORT \
            $CONF_OPT_BIND \
            ;
    fi
fi

if [ "$(id -u)" = '0' ]; then
    # use the node user by default
    exec su-exec node "$@"
else
    # otherwise, allow for a custom user (e.g. through --user CLI arg)
    exec "$@"
fi
