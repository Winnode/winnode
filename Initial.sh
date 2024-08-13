#!/bin/bash

GREEN="\e[1m\e[1;32m"
RED="\e[1m\e[1;31m"
BLUE='\033[0;34m'
NC="\e[0m"

function printLogo {
  bash <(curl -s https://raw.githubusercontent.com/Winnode/winnode/main/Logo.sh)
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
  source $HOME/.bash_profile
  if ! grep -q "${1}" $HOME/.bash_profile; then
    echo "export PATH=\$PATH:${1}" >> $HOME/.bash_profile
    printGreen "Added ${1} to PATH."
  else
    printBlue "${1} is already in PATH."
  fi
}

printLogo
printLine
printGreen "This is green text."
printRed "This is red text."
printBlue "This is blue text."
addToPath "/new/path"
