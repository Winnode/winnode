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
  PATH_EXIST=$(grep "${1}" $HOME/.bash_profile)
  if [ -z "$PATH_EXIST" ]; then
    echo "export PATH=\$PATH:${1}" >> $HOME/.bash_profile
  fi
}
