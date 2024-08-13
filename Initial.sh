#!/bin/bash

COLORS=(
  GREEN="\e[1m\e[1;32m"
  RED="\e[1m\e[1;31m"
  BLUE='\033[0;34m'
  NC="\e[0m"
)

function printLogo {
  bash <(curl -s https://raw.githubusercontent.com/Winnode/winnode/main/Initial.sh)
}

function printLine {
  echo -e "${BLUE}════════════════════════════════════════════════════════════════════════════════${NC}"
}

function printGreen {
  echo -e "${GREEN}${1}${NC}"
}

function printRed {
  echo -e "${RED}${1}${NC}"
}

function printBlue {
  echo -e "${BLUE}${1}${NC}"
}

function addToPath {
  local dir=$1
  source $HOME/.bash_profile
  if ! grep -q "${dir}" $HOME/.bash_profile; then
    echo "export PATH=\$PATH:${dir}" >> $HOME/.bash_profile
    printGreen "Added ${dir} to PATH."
  else
    printBlue "${dir} is already in PATH."
  fi
}
