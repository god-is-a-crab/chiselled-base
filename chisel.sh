#!/usr/bin/env bash

rm -rf rootfs/*
./chisel cut --root rootfs base-files_base base-files_release-info libc6_libs libstdc++6_libs
podman rm -a
podman rmi chiselled-base:latest hello:latest
podman build . -t chiselled-base:latest -f chiselled-base.dockerfile
podman build . -t hello:latest
podman run hello:latest
