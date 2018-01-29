THELOUNGE_VERSION?=2.7.0
ORGANISATION?=thelounge

all: main alpine slim

main:
	docker build -t ${ORGANISATION}/lounge:${THELOUNGE_VERSION} --build-arg THELOUNGE_VERSION=${THELOUNGE_VERSION} .


alpine:
	docker build -f alpine/Dockerfile -t ${ORGANISATION}/lounge:${THELOUNGE_VERSION}-alpine --build-arg THELOUNGE_VERSION=${THELOUNGE_VERSION} .


slim:
	docker build -f slim/Dockerfile -t ${ORGANISATION}/lounge:${THELOUNGE_VERSION}-slim --build-arg THELOUNGE_VERSION=${THELOUNGE_VERSION} .

.PHONY: main alpine slim
