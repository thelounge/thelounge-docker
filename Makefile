THELOUNGE_VERSION?=4.3.1-rc.1
ORGANISATION?=thelounge

all: main

main:
	docker build -t ${ORGANISATION}/thelounge:${THELOUNGE_VERSION} --build-arg THELOUNGE_VERSION=${THELOUNGE_VERSION} .

.PHONY: main
