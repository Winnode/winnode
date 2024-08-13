#!/bin/bash

"2. Updating packages..." && sleep 1
sudo apt update

"3. installing dependencies..." && sleep 1
sudo apt install curl git wget htop tmux build-essential jq make lz4 gcc unzip -y
