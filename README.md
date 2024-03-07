# Chiselled Ubuntu
Using a tool called `chisel` you can create base images. Download the `chisel` binary from [Canonical's Github for chisel](https://github.com/canonical/chisel/releases).
1. Run `chisel cut --root rootfs <libs>` and chisel will build you a rootfs/ for a base image with those libs installed (see `chisel.sh`).
2. Using a dockerfile, create the base image by adding `rootfs/` to the image root `/` (see `chiselled-base.dockerfile`)
3. Create application images from the chiselled base image (see `Dockerfile`)
