![The Lounge](https://raw.githubusercontent.com/thelounge/thelounge.github.io/master/assets/logos/logo/TL_Grey%26Yellow_Vertical_logotype_Transparent_Bg/TL_Grey%26Yellow_Vertical_logotype_Transparent_Bg.png)

#### Docker image for The Lounge, a modern web IRC client designed for self-hosting

**[Website](https://thelounge.chat/) • [Docs](https://thelounge.chat/docs) • [Demo](https://demo.thelounge.chat/)**

[![#thelounge IRC channel on Libera.Chat"](https://img.shields.io/badge/Libera.Chat-%23thelounge-415364.svg?colorA=ff9e18&style=flat-square)](https://demo.thelounge.chat/) [![Total pulls on Docker](https://img.shields.io/docker/pulls/thelounge/thelounge.svg?style=flat-square&maxAge=3600)](https://hub.docker.com/r/thelounge/thelounge/) [![Total stars on Docker](https://img.shields.io/docker/stars/thelounge/thelounge.svg?colorB=007dc7&style=flat-square&maxAge=3600)](https://hub.docker.com/r/thelounge/thelounge/)

---

### Overview

-   **Modern features brought to IRC.** Push notifications, link previews, new message markers, and more bring IRC to the 21st century.
-   **Always connected.** Remains connected to IRC servers while you are offline.
-   **Cross platform.** It doesn't matter what OS you use, it just works wherever Node.js runs.
-   **Responsive interface.** The client works smoothly on every desktop, smartphone and tablet.
-   **Synchronized experience.** Always resume where you left off no matter what device.

To learn more about configuration, usage and features of The Lounge, take a look at [the website](https://thelounge.chat).

### Registries

Images are available in the following registries:

-   [ghcr.io](https://github.com/thelounge/thelounge-docker/pkgs/container/thelounge): `ghcr.io/thelounge/thelounge`
-   [DockerHub](https://hub.docker.com/r/thelounge/thelounge): `thelounge/thelounge`

### Running a container

One can get started quickly by using the example [`docker-compose.yml`](https://github.com/thelounge/docker-lounge/blob/master/docker-compose.yml) file. [What is docker-compose?](https://docs.docker.com/compose/)

```sh
$ docker compose up --detach
```

or starting a container manually:

```
$ docker run --detach \
             --name thelounge \
             --publish 9000:9000 \
             --volume thelounge:/var/opt/thelounge \
             --restart always \
             ghcr.io/thelounge/thelounge:latest
```

### Executing commands in the container

The container is setup to use an unprivileged user (node).  
You can directly issue thelounge commands as follows:

```
$ docker exec -it [container_name] thelounge help
```

### Configuring identd

Since root permissions are dropped in the container the default port 113 can not be used as it is within the
priviliged port range. Instead, use a higher port in your The Lounge identd configuration and map it back to 113
on your host system, for example like so:

```
$ docker run --detach \
             --name thelounge \
             --publish 113:9001 \
             --publish 9000:9000 \
             --volume thelounge:/var/opt/thelounge \
             --restart always \
             ghcr.io/thelounge/thelounge:latest
```

Refer to the [identd / oidentd docs](https://thelounge.chat/docs/guides/identd-and-oidentd) for more detailed information.

### Data directory

The Lounge reads and stores all of its configuration, logs and other data at `/var/opt/thelounge`.

By default, The Lounge will run using the `node (1000:1000)` system user in the container, meaning volume contents must be owned by said user.

_You will probably want to persist the data at this location by using [one of the means](https://docs.docker.com/storage/) to do so._

### Adding users

Users can be added as follows:

```sh
$ docker exec -it [container_name] thelounge add [username]
```

_Note: without [persisting data](#data-directory), added users will be lost when the container is removed._

### Changing the port that The Lounge will be available on

To change the port which The Lounge will be available on, one will have to
change the host port in the port mapping. To make The Lounge available on e.g. port 5000:

```sh
$ docker run --detach \
             --name thelounge \
             --publish 5000:9000 \ # Change host port to listen on port 5000
             --volume thelounge:/var/opt/thelounge \
             --restart always \
             ghcr.io/thelounge/thelounge:latest
```

### Container user (advanced usage)

By default, The Lounge will run using the `node (1000:1000)` user. This is customizable by running the container as a different, non-root, user.
Beware that this may cause permission issues when a container process tries reading from the data disk unless you have manually set the permissions correctly.

Also keep in mind that whenever executing one-off commands in the container you need to explicitly set the correct user.
