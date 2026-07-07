#!/bin/bash

command -v sed &> /dev/null || {
    >&2 echo "sed command missing"
    exit 1
}

NEW_VERSION="$1"

if [[ ! $NEW_VERSION =~ ^[0-9]+\.[0-9]+\.[0-9]+ ]]; then
    >&2 echo "Provided version (\"$NEW_VERSION\") is not in a valid format."
    exit 1
fi

replace_regex_in_file() {
    local REGEX="$1"
    shift 1
    local FILES=("$@")
    for file in "${FILES[@]}"; do
        [[ -f "$file" ]] || continue
        sed -i.bak -E "s/${REGEX}/\1${NEW_VERSION}/" "$file"
        rm -f "${file}.bak"
    done
}

changelog_text() {
    cat <<EOF
## ${NEW_VERSION} ($(date +%Y-%m-%d))
- Bump [\`thelounge\`][1] to [\`${NEW_VERSION}\`](https://github.com/thelounge/thelounge/releases/tag/v${NEW_VERSION}).

EOF
}

replace_regex_in_file "(THELOUNGE_VERSION\?=).*$" Makefile
replace_regex_in_file "(ARG THELOUNGE_VERSION=).*$" Dockerfile

(echo 2a; changelog_text; echo .; echo w) | ed - CHANGELOG.md
