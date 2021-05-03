#!/bin/bash

docker run -it --rm \
    --privileged \
    --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
    --env="DISPLAY" \
    --net=host \
    --name test my_ubuntu_firefox:latest bash