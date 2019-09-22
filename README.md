# Alpine + QEMU + ARMHF (arm32v7)

![Docker Build Status](https://img.shields.io/docker/build/anacha/arm32v7-alpine-qemu.svg)

[![](https://images.microbadger.com/badges/version/anacha/arm64v8-alpine-qemu.svg)](https://microbadger.com/images/anacha/arm32v7-alpine-qemu "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/anacha/arm64v8-alpine-qemu:4.svg)](https://microbadger.com/images/anacha/arm32v7-alpine-qemu:4 "Get your own version badge on microbadger.com")
[![Layers](https://images.microbadger.com/badges/image/anacha/arm64v8-alpine-qemu.svg)](https://microbadger.com/images/anacha/arm32v7-alpine-qemu "Get your own image badge on microbadger.com")

This project enables building a *Docker* image to allow running *64-bits ARM*
*Alpine Linux* builds on non-arm hosts (like [Travis](https://travis-ci.org) build agents).

- [arm32v7/alpine](https://hub.docker.com/r/arm32v7/alpine)
- [qemu-user-static](https://github.com/multiarch/qemu-user-static/releases)

## Usage

Before building images from this image or running containers from those on `x86`
architecture execute the following command:

`docker run --rm --privileged multiarch/qemu-user-static:register --reset`

As described in its [GitHub project](https://github.com/multiarch/qemu-user-static)
this will register the *static QEMU binary* that exists in this base image
for all supported processors.

- [**example-arm64v8-alpine-golang**](https://gitlab.com/dev-to/example-arm64v8-alpine-golang)

## Layers and Dependencies graph

```text
+-- arm32v7/alpine:3.10
    |
    +-- qemu-arm-static:4.1.0-1
```

| libray          | base-1 image          |
| --------------- | --------------------- |
| qemu-arm-static | arm32v7/alpine:3.10   |
