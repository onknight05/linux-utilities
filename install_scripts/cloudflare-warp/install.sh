#!/bin/bash

curl https://pkg.cloudflareclient.com/pubkey.gpg | sudo apt-key add -

RELEASE_NAME=$(lsb_release -a | awk '{print $2}' | awk 'NR==4')
echo "deb http://pkg.cloudflareclient.com/ ${RELEASE_NAME} main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list

sudo apt-get update
sudo apt-get install -y cloudflare-warp