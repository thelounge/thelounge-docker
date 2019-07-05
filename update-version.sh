#!/bin/bash

NEW_VERSION="$1"

replace_regex_in_file() {
    local REGEX="$1"
    shift 1
    local FILES=$@
    for file in $FILES; do
        sed -i -E "s/${REGEX}/\1${NEW_VERSION}/" "$file"
    done
}

changelog_text() {
    cat <<EOF
## ${NEW_VERSION} ($(date +%Y-%m-%d))
- Bump [\`thelounge\`][1] to [\`${NEW_VERSION}\`](https://github.com/thelounge/thelounge/releases/tag/v${NEW_VERSION}).

EOF
}

replace_regex_in_file "(THELOUNGE_VERSION\?=).*$" Makefile
replace_regex_in_file "(ARG THELOUNGE_VERSION=).*$" alpine/Dockerfile Dockerfile

(echo 2a; changelog_text; echo .; echo w) | ed - CHANGELOG.md
