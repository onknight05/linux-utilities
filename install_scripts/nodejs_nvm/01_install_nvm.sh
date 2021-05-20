#!/bin/bash

sudo apt update && sudo apt install curl -y
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# enable nvm in current shell
source ~/.bashrc
