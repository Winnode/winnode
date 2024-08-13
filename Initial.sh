function printLogo {
  curl -s https://raw.githubusercontent.com/Winnode/winnode/main/Logo.sh | awk '{print}'
}

function printLine {
  echo "------------------------------------------------------------------------------------" | sed 's/./-/g'
}

function printGreen {
  echo "$1" | awk '{printf "\033[0;32m%s\033[0m\n", $0}'
}

function printRed {
  echo "$1" | awk '{printf "\033[0;31m%s\033[0m\n", $0}'
}

function printBlue {
  echo "$1" | awk '{printf "\033[0;34m%s\033[0m\n", $0}'
}

function addToPath {
  local dir="$1"
  local profile="$HOME/.bash_profile"
  if ! grep -qF "export PATH=\$PATH:${dir}" "$profile"; then
    sed -i "/^export PATH/a export PATH=\$PATH:${dir}" "$profile"
  fi
  source "$profile"
}
