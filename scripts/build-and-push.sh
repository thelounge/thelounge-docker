#!/usr/bin/env bash
# Script executed by GitHub actions.

set -euo pipefail

VERSION="$(git describe --exact-match --tags HEAD)"
TAG="$VERSION"
MAJOR_TAG="$(sed -nre 's/^([0-9]+).*/\1/p' <<< "$VERSION")"
EXTRA_TAGS=()

DOCKERHUB_IMAGE="thelounge/thelounge"
GITHUB_IMAGE="ghcr.io/thelounge/thelounge"

# If not a pre-release push :latest & MAJOR_TAG
if grep -qE "^[0-9]*\.[0-9]*\.[0-9]*$" <<< "${VERSION}"; then
    EXTRA_TAGS+=("--tag" "${DOCKERHUB_IMAGE}:latest")
    EXTRA_TAGS+=("--tag" "${DOCKERHUB_IMAGE}:${MAJOR_TAG}")
    EXTRA_TAGS+=("--tag" "${GITHUB_IMAGE}:latest")
    EXTRA_TAGS+=("--tag" "${GITHUB_IMAGE}:${MAJOR_TAG}")
fi

docker buildx build \
    --push \
    --platform "${PLATFORMS}" \
    --tag "${DOCKERHUB_IMAGE}:${TAG}" \
    --tag "${GITHUB_IMAGE}:${TAG}" \
    "${EXTRA_TAGS[@]}" \
    --file Dockerfile \
    .
