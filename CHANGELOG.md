# Changelog

## 4.2.0-pre.2 (2020-07-28)
- Bump [`thelounge`][1] to [`4.2.0-pre.2`](https://github.com/thelounge/thelounge/releases/tag/v4.2.0-pre.2).

## 4.1.0 (2020-03-09)
- Bump [`thelounge`][1] to [`4.1.0`](https://github.com/thelounge/thelounge/releases/tag/v4.1.0).

## 4.0.0 (2020-01-01)
- Bump [`thelounge`][1] to [`4.0.0`](https://github.com/thelounge/thelounge/releases/tag/v4.0.0).

## 3.3.0 (2019-10-28)
- Bump [`thelounge`][1] to [`3.3.0`](https://github.com/thelounge/thelounge/releases/tag/v3.3.0).
- Upgrade base images to use Node.js 12.

## 3.2.0 (2019-08-20)
- Bump [`thelounge`][1] to [`3.2.0`](https://github.com/thelounge/thelounge/releases/tag/v3.2.0).

## 3.1.1 (2019-07-11)
- Bump [`thelounge`][1] to [`3.1.1`](https://github.com/thelounge/thelounge/releases/tag/v3.1.1).

## 3.0.1 (2019-02-11)
- Bump [`thelounge`][1] to [`v3.0.1`](https://github.com/thelounge/thelounge/releases/tag/v3.0.1).

## 3.0.0 (2019-01-27)
- Bump [`thelounge`][1] to [`v3.0.0`](https://github.com/thelounge/thelounge/releases/tag/v3.0.0).
- Upgrade to `node v10` base images.

#### Breaking Changes
- Rename the image from `thelounge/lounge` to [`thelounge/thelounge`](https://hub.docker.com/r/thelounge/thelounge/) on DockerHub.
- Drop from root user in the container.
    - This may affect file permissions on the *host system* of mounted data directories. To resolve this, refer to running as a custom user in the [README](https://github.com/thelounge/thelounge-docker/blob/3.0.0/README.md).
    - These file permission errors are restricted to the host system only, The Lounge will continue to run successfully in the container.
- Change default data path from `/home/lounge/data` to `/var/opt/thelounge`.
    - This requires you to update your mounted data volume to mount at `/var/opt/thelounge`.
- Remove support for the `HOST`, `PORT` and `BIND` environment variables.
    - You can instead set these config options in the config file, or by running the container with a custom command where you supply the configurations.
- Remove the `slim` flavour.
- No longer installs `vim` and `nano` in the base image.

## 2.7.1 (2018-02-19)

- Bump [`thelounge`][1] to [`v2.7.1`](https://github.com/thelounge/thelounge/releases/tag/v2.7.1).
- Reorder Dockerfile directives to facilitate better docker build cache ([#44](https://github.com/thelounge/docker-lounge/pull/44) by [@mmlb](https://github.com/mmlb)).

## 2.7.0 (2018-01-29)

- Bump [`thelounge`][1] to [`v2.7.0`](https://github.com/thelounge/thelounge/releases/tag/v2.7.0).
- Use `thelounge` executable instead of the deprecated `lounge` executable.
- Use `THELOUNGE_HOME` environment variable instead of the deprecated `LOUNGE_HOME` environment variable.
    - This is an internal change and will not affect existing configurations.

## 2.6.0 (2017-11-19)

- bump [`thelounge`][1] to [`v2.6.0`](https://github.com/thelounge/thelounge/releases/tag/v2.6.0)

## 2.5.0 (2017-10-17)

- Bump [`thelounge`][1] to [`v2.5.0`](https://github.com/thelounge/thelounge/releases/tag/v2.5.0).
- Add a Makefile to help build images.
- Discontinue the `LOUNGE_VERSION` environment variable in favor of the new `THELOUNGE_VERSION` build argument.
    - The `THELOUNGE_VERSION` build argument makes it possible to control which `thelounge` version to install via build arguments.

## 2.4.0 (2017-07-31)

- Bump [`thelounge`][1] to [`v2.4.0`](https://github.com/thelounge/thelounge/releases/tag/v2.4.0).

## 2.3.2 (2017-06-25)

- Bump [`thelounge`][1] to [`v2.3.2`](https://github.com/thelounge/thelounge/releases/tag/v2.3.2).

## 2.3.1 (2017-06-09)

- Bump [`thelounge`][1] to [`v2.3.1`](https://github.com/thelounge/thelounge/releases/tag/v2.3.1).

## 2.3.0 (2017-06-08)

- Bump [`thelounge`][1] to [`v2.3.0`](https://github.com/thelounge/thelounge/releases/tag/v2.3.0).
- `vim(1)` and `nano(1)` are now installed in the base image `thelounge/lounge`. `alpine` and `slim` flavours are unaffected.
    - this allows editing configuration file from within the container via attaching to pseudo-TTYs.
- `alpine` flavour is now based on the official alpine Node 6 LTS image.

## 2.2.2 (2017-03-13)

- Bump [`thelounge`][1] to [`v2.2.2`](https://github.com/thelounge/thelounge/releases/tag/v2.2.2).
- Use `start` subcommand as default command ([#29](https://github.com/thelounge/docker-lounge/pull/29) by [@williamboman](https://github.com/williamboman)).

## 2.2.1 (2017-02-13)

- Bump [`thelounge`][1] to [`v2.2.1`](https://github.com/thelounge/thelounge/releases/tag/v2.2.1).
- Use `CMD` directive in `Dockerfile` to facilitate user-defined commands ([#28](https://github.com/thelounge/docker-lounge/pull/28) by [@williamboman](https://github.com/williamboman)).


## 2.2.0 (2017-02-01)

- Bump [`thelounge`][1] to [`v2.2.0`](https://github.com/thelounge/thelounge/releases/tag/v2.2.0).
- Add `alpine` and `slim` flavours of the official image ([#21](https://github.com/thelounge/docker-lounge/pull/21) by [@williamboman](https://github.com/williamboman)).
  - These flavours will henceforth be available via `-alpine` and `-slim`, e.g.;
    - `thelounge/lounge:2.2.0-alpine`
    - `thelounge/lounge:2.2.0-slim`
- Use `exec` in entrypoint script ([#25](https://github.com/thelounge/docker-lounge/pull/25) by [@williamboman](https://github.com/williamboman)).
- Merge npm operation layers into a single one, effectively reducing the images' virtual size ([#27](https://github.com/thelounge/docker-lounge/pull/27) by [@williamboman](https://github.com/williamboman)).


## 2.1.0 (2016-10-17)

- Bump [`thelounge`][1] to [`v2.1.0`](https://github.com/thelounge/thelounge/releases/tag/v2.1.0).
- Image is now based on `node:6` ([#16](https://github.com/thelounge/docker-lounge/pull/16) by
  [@zkanda](https://github.com/zkanda)).
- Now runs container as `root` user ([#17](https://github.com/thelounge/docker-lounge/pull/17) by
  [@zkanda](https://github.com/zkanda)).

[1]: https://github.com/thelounge/thelounge
