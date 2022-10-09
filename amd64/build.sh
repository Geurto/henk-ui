#!/bin/bash
export DOCKER_BUILDKIT=1
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

(cd $SCRIPT_DIR/.. && \
docker build \
--build-arg BASE_IMAGE=ubuntu:jammy \
--platform linux/amd64 \
-t "henk-9000:ui-amd64" \
.)