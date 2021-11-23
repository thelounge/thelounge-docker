#!/usr/bin/env bash
# Script executed by GitHub actions.

set -euo pipefail

VERSION="$GITHUB_REF"
TAG="$VERSION"
MAJOR_TAG="$(sed -nre 's/^([0-9]+).*/\1/p' <<< "$VERSION")"
LATEST_TAG="latest"

if grep -q "^alpine/" <<< "${DOCKERFILE}"; then
    TAG="${VERSION}-alpine"
    MAJOR_TAG="${MAJOR_TAG}-alpine"
    LATEST_TAG="alpine"
fi

# If not a pre-release push LATEST_TAG & MAJOR_TAG
if grep -qE "^[0-9]*\.[0-9]*\.[0-9]*$" <<< "${VERSION}"; then
    EXTRA_ARG+=("--tag" "${DOCKER_REPOSITORY}:${LATEST_TAG}")
    EXTRA_ARG+=("--tag" "${DOCKER_REPOSITORY}:${MAJOR_TAG}")
fi

docker buildx build \
    --push \
    --platform "${PLATFORMS}" \
    --tag "${DOCKER_REPOSITORY}:${TAG}" \
    "${EXTRA_ARG[@]}" \
    --file "${DOCKERFILE}" \
    .
