# Changelog

## [4.5.0](https://github.com/thelounge/thelounge-docker/compare/4.4.3...4.5.0) (2025-06-28)


### Features

* use LTS version of node ([#199](https://github.com/thelounge/thelounge-docker/issues/199)) ([6da36d6](https://github.com/thelounge/thelounge-docker/commit/6da36d6444bdf6334ba0cd124529b6ca27c9ce7b))
* use the USER directive ([#187](https://github.com/thelounge/thelounge-docker/issues/187)) ([d4b3d3b](https://github.com/thelounge/thelounge-docker/commit/d4b3d3b80ccdf8cbbef1abaf62e8c84bb7b7d616))


### Bug Fixes

* add python setuptools required for sqlite build ([#198](https://github.com/thelounge/thelounge-docker/issues/198)) ([421790c](https://github.com/thelounge/thelounge-docker/commit/421790c7f47dd49b697b4e57eaa12a27890b2662))

## [4.4.3](https://github.com/thelounge/thelounge-docker/compare/4.4.1...4.4.3) (2024-04-06)


### Miscellaneous Chores

* **deps:** update dependency thelounge to v4.4.3 ([#183](https://github.com/thelounge/thelounge-docker/issues/183)) ([e580387](https://github.com/thelounge/thelounge-docker/commit/e580387da46b66bffb7dd8770c583c7a411e852a))

## [4.4.1](https://github.com/thelounge/thelounge-docker/compare/4.4.1-rc.2...4.4.1) (2023-06-18)


### Bug Fixes

* **release-please:** use custom token ([#175](https://github.com/thelounge/thelounge-docker/issues/175)) ([75c03dd](https://github.com/thelounge/thelounge-docker/commit/75c03dd2d10db4806bc5881a2555d8fb7eff516e))


### Miscellaneous Chores

* **deps:** update dependency thelounge to v4.4.1 ([#176](https://github.com/thelounge/thelounge-docker/issues/176)) ([ca61267](https://github.com/thelounge/thelounge-docker/commit/ca61267556e2f3663b290ed61f635c07ecd25b62))

## [4.4.1-rc.2](https://github.com/thelounge/thelounge-docker/compare/4.4.1-rc.1...4.4.1-rc.2) (2023-06-01)


### Features

* automatic releases ([#165](https://github.com/thelounge/thelounge-docker/issues/165)) ([bec4974](https://github.com/thelounge/thelounge-docker/commit/bec4974f558c376acaed9a32ce219ec46239101f))


### Bug Fixes

* **release-please:** target master instead of main ([#173](https://github.com/thelounge/thelounge-docker/issues/173)) ([abb97f4](https://github.com/thelounge/thelounge-docker/commit/abb97f49284efe06e05244d6c3401089126c8190))
* **renovate:** fix npm versioning range ([#169](https://github.com/thelounge/thelounge-docker/issues/169)) ([27fe810](https://github.com/thelounge/thelounge-docker/commit/27fe810b19556af2806d321e2c63e0995d07831b))
* **renovate:** set ignoreUnstable: false ([#171](https://github.com/thelounge/thelounge-docker/issues/171)) ([3466f9d](https://github.com/thelounge/thelounge-docker/commit/3466f9d68d6c622eac20bbed3ddcb4b86e1b0f37))


### Miscellaneous Chores

* **deps:** update dependency thelounge to v4.4.1-rc.2 ([#172](https://github.com/thelounge/thelounge-docker/issues/172)) ([3b9f4f0](https://github.com/thelounge/thelounge-docker/commit/3b9f4f0d359dfcf2eaac271d341889c0f23e055d))

## 4.4.1-rc.1 (2023-05-21)
- Bump [`thelounge`][1] to [`4.4.1-rc.1`](https://github.com/thelounge/thelounge/releases/tag/v4.4.1-rc.1).

## 4.4.0 (2023-05-14)
- Bump [`thelounge`][1] to [`4.4.0`](https://github.com/thelounge/thelounge/releases/tag/v4.4.0).
- Also publish images to ghcr.io/thelounge/thelounge, which henceforth is the default repository.

## 4.3.1 (2022-04-12)
- Rebuild latest stable release images on a weekly basis.
- Bump [`thelounge`][1] to [`4.3.1`](https://github.com/thelounge/thelounge/releases/tag/v4.3.1).

#### Breaking changes
- Only provide an alpine image. The `:alpine` tag will now be `:latest`. Versioned tags will also no longer have the `-alpine` suffix.

## 4.3.0 (2021-11-23)
- Bump [`thelounge`][1] to [`4.3.0`](https://github.com/thelounge/thelounge/releases/tag/v4.3.0).
- Upgrade Node.js base images from 12 to LTS.

## 4.2.0 (2020-08-20)
- Bump [`thelounge`][1] to [`4.2.0`](https://github.com/thelounge/thelounge/releases/tag/v4.2.0).
- Add support for ARM (ARM64 + ARMv7) images ([#109](https://github.com/thelounge/thelounge-docker/pull/109)) by [@klausenbusk](https://github.com/klausenbusk)

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
