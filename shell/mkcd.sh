# mkcd - create a directory and cd into it
# Source this file in your .bashrc / .zshrc:
#   source /usr/local/share/nurutils/mkcd.sh

mkcd() {
  if [[ $# -eq 0 ]]; then
    echo "Usage: mkcd <dir>" >&2
    return 2
  fi
  mkdir -p "$1" && cd "$1"
}
