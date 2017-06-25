# Changelog

## 2.3.2 (2017-06-25)

- bump [`thelounge`][1] to [`v2.3.2`](https://github.com/thelounge/lounge/releases/tag/v2.3.2)

## 2.3.1 (2017-06-09)

- bump [`thelounge`][1] to [`v2.3.1`](https://github.com/thelounge/lounge/releases/tag/v2.3.1)

## 2.3.0 (2017-06-08)

- bump [`thelounge`][1] to [`v2.3.0`](https://github.com/thelounge/lounge/releases/tag/v2.3.0)
- `vim(1)` and `nano(1)` are now installed in the base image `thelounge/lounge`. `alpine` and `slim` flavours are unaffected
    - this allows editing configuration file from within the container via attaching to pseudo-TTYs
- `alpine` flavour is now based on the official alpine Node 6 LTS image

## 2.2.2 (2017-03-13)

- bump [`thelounge`][1] to [`v2.2.2`](https://github.com/thelounge/lounge/releases/tag/v2.2.2)
- use `start` subcommand as default command ([#29](https://github.com/thelounge/docker-lounge/pull/29) by [@williamboman](https://github.com/williamboman))

## 2.2.1 (2017-02-13)

- bump [`thelounge`][1] to [`v2.2.1`](https://github.com/thelounge/lounge/releases/tag/v2.2.1)
- use `CMD` directive in `Dockerfile` to facilitate user-defined commands ([#28](https://github.com/thelounge/docker-lounge/pull/28) by [@williamboman](https://github.com/williamboman))


## 2.2.0 (2017-02-01)

- bump [`thelounge`][1] to [`v2.2.0`](https://github.com/thelounge/lounge/releases/tag/v2.2.0)
- add `alpine` and `slim` flavours of the official image ([#21](https://github.com/thelounge/docker-lounge/pull/21) by [@williamboman](https://github.com/williamboman))
  - These flavours will henceforth be available via `-alpine` and `-slim`, e.g.;
    - `thelounge/lounge:2.2.0-alpine`
    - `thelounge/lounge:2.2.0-slim`
- use `exec` in entrypoint script ([#25](https://github.com/thelounge/docker-lounge/pull/25) by [@williamboman](https://github.com/williamboman))
- merge npm operation layers into a single one, effectively reducing the images' virtual size ([#27](https://github.com/thelounge/docker-lounge/pull/27) by [@williamboman](https://github.com/williamboman))


## 2.1.0 (2016-10-17)

- bump [`thelounge`][1] to [`v2.1.0`](https://github.com/thelounge/lounge/releases/tag/v2.1.0)
- image is now based on `node:6` ([#16](https://github.com/thelounge/docker-lounge/pull/16) by
  [@zkanda](https://github.com/zkanda))
- now runs container as `root` user ([#17](https://github.com/thelounge/docker-lounge/pull/17) by
  [@zkanda](https://github.com/zkanda))

[1]: https://github.com/thelounge/lounge
