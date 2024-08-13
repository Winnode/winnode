#!/bin/bash
source <(curl -s https://raw.githubusercontent.com/Winnode/winnode/main/Initial.sh)

printGreen "2. Updating packages..." && sleep 1
sudo apt update

printGreen "3. installing dependencies..." && sleep 1
sudo apt install curl git wget htop tmux build-essential jq make lz4 gcc unzip -y