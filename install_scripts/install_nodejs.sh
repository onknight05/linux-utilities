#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm --version

nvm install 12.14.0
nvm alias default 12.14.0
node --version