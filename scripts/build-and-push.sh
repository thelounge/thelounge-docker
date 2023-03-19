#!/usr/bin/env bash
# Script executed by GitHub actions.

set -euo pipefail

VERSION="$(git describe --exact-match --tags HEAD)"
TAG="$VERSION"
MAJOR_TAG="$(sed -nre 's/^([0-9]+).*/\1/p' <<< "$VERSION")"
DOCKERHUB_IMAGE="thelounge/thelounge"
GITHUB_IMAGE="ghcr.io/thelounge/thelounge"
TAGS=(
    "--tag" "${DOCKERHUB_IMAGE}:${TAG}"
    "--tag" "${GITHUB_IMAGE}:${TAG}"
)


# If not a pre-release push :latest & MAJOR_TAG
if grep -qE "^[0-9]*\.[0-9]*\.[0-9]*$" <<< "${VERSION}"; then
    TAGS+=(
        "--tag" "${DOCKERHUB_IMAGE}:latest"
        "--tag" "${DOCKERHUB_IMAGE}:${MAJOR_TAG}"
        "--tag" "${GITHUB_IMAGE}:latest"
        "--tag" "${GITHUB_IMAGE}:${MAJOR_TAG}"
    )
fi

docker buildx build \
    --push \
    --platform "${PLATFORMS}" \
    "${TAGS[@]}" \
    --file Dockerfile \
    .
