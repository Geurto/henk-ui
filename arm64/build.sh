#!/bin/bash
set -e
export DOCKER_BUILDKIT=1

echo "Building ARM version..."
echo "****************************************************************************************"
echo "Setting up QEMU environment.."
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
echo "****************************************************************************************"
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
(cd $SCRIPT_DIR/.. && \
docker build \
--build-arg BASE_IMAGE=balenalib/raspberrypi4-64-ubuntu:jammy \
--platform linux/arm64/v8 \
--no-cache \
-t "henk-9000:ui-arm64" \
.)
