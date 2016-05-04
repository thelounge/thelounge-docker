# docker-lounge

Docker container for [The Lounge](https://thelounge.github.io/), a self-hosted web IRC client.

## Running a container

Using the example docker-compose.yml file
```sh
$ docker-compose up --detach
```

or

```
$ docker run --detach \
		--name lounge \
		--publish 9000:9000 \
		--volume ~/.lounge:/home/lounge/data \
		--restart always \
		thelounge/lounge:latest
```

## Where is data stored?

Lounge reads and stores its configuration, logs and other data at `/home/lounge/data`.

## What user does lounge run as?

Lounge runs as the `lounge:lounge` user by default, with `uid=1000, gid=1000`. These can be
overridden with the `user`, `uid`, `group`, `gid` [build args](https://docs.docker.com/engine/reference/commandline/build/#set-build-time-variables-build-arg).
