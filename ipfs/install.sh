#!/bin/bash

# Install IPFS kubo
wget https://dist.ipfs.tech/kubo/v0.26.0/kubo_v0.26.0_linux-amd64.tar.gz
tar -xvzf kubo_v0.26.0_linux-amd64.tar.gz
cd kubo
sudo bash install.sh
cd ..
rm -rf kubo*

# IPFS init
ipfs --version
ipfs init
cp ./ipfs/swarm.key ~/.ipfs/
