# docker-lounge

Docker container for [The Lounge](https://thelounge.github.io/), a self-hosted web IRC client.

## Running a container

Using the example docker-compose.yml file
```sh
$ docker-compose up --detach
```

or

```
$ docker run --detach \
		--name lounge \
		--publish 9000:9000 \
		--volume ~/.lounge:/home/lounge/data \
		--restart always \
		thelounge/lounge:latest
```

## Changing the port that The Lounge will be available on

To change the port which The Lounge will be available on, one will have to
change the host port in the port mapping. To make The Lounge available on e.g. port 5000;
```sh
$ docker run --detach \
		--name lounge \
		--publish 5000:9000 \ # Change host port to listen on port 5000
		--volume ~/.lounge:/home/lounge/data \
		--restart always \
		thelounge/lounge:latest
```

## Environment variables (advanced usage)

You can control how The Lounge is started through the following environment variables;

- `HOST` (equivalent to the `-H, --host` CLI option)
- `PORT` (equivalent to the `-P, --port` CLI option)
- `BIND` (equivalent to the `-B, --bind` CLI option)

## Where is data stored?

Lounge reads and stores its configuration, logs and other data at `/home/lounge/data`.
