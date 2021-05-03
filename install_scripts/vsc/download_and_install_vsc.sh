#!/bin/bash

wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64

sudo dpkg --install ./*.deb
