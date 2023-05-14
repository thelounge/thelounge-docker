THELOUNGE_VERSION?=4.4.0
ORGANISATION?=thelounge

all: main

main:
	docker build -t ${ORGANISATION}/thelounge:${THELOUNGE_VERSION} --build-arg THELOUNGE_VERSION=${THELOUNGE_VERSION} .

.PHONY: main
