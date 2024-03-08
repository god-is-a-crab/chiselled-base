#!/usr/bin/env bash

rm -r rootfs/*
./chisel cut --root rootfs libstdc++6_libs
podman rm -a
podman rmi chiselled-base:latest hello:latest
podman build . -t chiselled-base:latest -f chiselled-base.dockerfile
podman build . -t hello:latest
podman run hello:latest
