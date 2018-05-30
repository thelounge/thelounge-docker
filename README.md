<h1 align="center">
	<img
		width="300"
		alt="The Lounge"
		src="https://raw.githubusercontent.com/thelounge/thelounge/master/client/img/logo-vertical-transparent-bg.svg?sanitize=true">
</h1>

<h3 align="center">
	Docker container for The Lounge, modern web IRC client designed for self-hosting
</h3>

<p align="center">
	<strong>
		<a href="https://thelounge.chat/">Website</a>
		•
		<a href="https://thelounge.chat/docs">Docs</a>
		•
		<a href="https://demo.thelounge.chat/">Demo</a>
	</strong>
</p>
<p align="center">
	<a href="https://demo.thelounge.chat/"><img
		alt="#thelounge IRC channel on freenode"
		src="https://img.shields.io/badge/freenode-%23thelounge-415364.svg?colorA=ff9e18&style=flat-square"></a>
	<a href="https://hub.docker.com/r/thelounge/lounge/"><img
		alt="Total pulls on Docker"
		src="https://img.shields.io/docker/pulls/thelounge/lounge.svg?style=flat-square"></a>
</p>

## Overview

* **Modern features brought to IRC.** Push notifications, link previews, new message markers, and more bring IRC to the 21st century.
* **Always connected.** Remains connected to IRC servers while you are offline.
* **Cross platform.** It doesn't matter what OS you use, it just works wherever Node.js runs.
* **Responsive interface.** The client works smoothly on every desktop, smartphone and tablet.
* **Synchronized experience.** Always resume where you left off no matter what device.

To learn more about configuration, usage and features of The Lounge, take a look at [the website](https://thelounge.chat).

## Running a container

One can get started quickly by using the example [`docker-compose.yml`](https://github.com/thelounge/docker-lounge/blob/master/docker-compose.yml) file. [What is docker-compose?](https://docs.docker.com/compose/)
```sh
$ docker-compose up --detach
```

or starting a container manually:

```
$ docker run --detach \
		--name thelounge \
		--publish 9000:9000 \
		--volume ~/.thelounge:/var/opt/thelounge \
		--restart always \
		thelounge/lounge:latest
```

## Data directory

The Lounge reads and stores all of its configuration, logs and other data at `/var/opt/thelounge`.

*You will probably want to persist the data at this location by using [one of the means](https://docs.docker.com/storage/) to do so.*

## Adding users

Users can be added as follows:
```sh
$ docker exec -it <container_name> thelounge add <username>
```

*Note: without [persisting data](#data-directory), added users will be lost when the container is removed.*

## Changing the port that The Lounge will be available on

To change the port which The Lounge will be available on, one will have to
change the host port in the port mapping. To make The Lounge available on e.g. port 5000:
```sh
$ docker run --detach \
		--name thelounge \
		--publish 5000:9000 \ # Change host port to listen on port 5000
		--volume ~/.thelounge:/var/opt/thelounge \
		--restart always \
		thelounge/lounge:latest
```

## Environment variables (advanced usage)

You can control how The Lounge is started through the following environment variables;

- `HOST` (equivalent to the `-H, --host` CLI option)
- `PORT` (equivalent to the `-P, --port` CLI option)
- `BIND` (equivalent to the `-B, --bind` CLI option)
