THELOUNGE_VERSION?=4.2.0-pre.2
ORGANISATION?=thelounge

all: main alpine

main:
	docker build -t ${ORGANISATION}/thelounge:${THELOUNGE_VERSION} --build-arg THELOUNGE_VERSION=${THELOUNGE_VERSION} .

alpine:
	docker build -f alpine/Dockerfile -t ${ORGANISATION}/thelounge:${THELOUNGE_VERSION}-alpine --build-arg THELOUNGE_VERSION=${THELOUNGE_VERSION} alpine

.PHONY: main alpine
