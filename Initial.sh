function printLogo {
  curl -s https://raw.githubusercontent.com/Winnode/winnode/main/Logo.sh | bash
}

function printLine {
  printf '%s\n' '────────────────────────────────────────────────────────────────────'
}

function printGreen {
  printf "%b%s%b\n" "${COLORS[0]}" "$1" "${COLORS[3]}"
}

function printRed {
  printf "%b%s%b\n" "${COLORS[1]}" "$1" "${COLORS[3]}"
}

function printBlue {
  printf "%b%s%b\n" "${COLORS[2]}" "$1" "${COLORS[3]}"
}

function addToPath {
  local dir="$1"
  local profile="$HOME/.bash_profile"
  grep -qxF "export PATH=\$PATH:${dir}" "$profile" || echo "export PATH=\$PATH:${dir}" >> "$profile"
  source "$profile"
}
