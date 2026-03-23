# nurutils

Small collection of everyday shell utilities.

## Install

```bash
sudo dpkg -i nurutils_1.0.0_all.deb
```

## Tools

| Command | Description |
|---|---|
| `ee <file>` | Empty a file and open it in `$EDITOR` |
| `bak <file>` | Create a timestamped backup copy |
| `cpe <src> <dest>` | Copy a file, then edit the copy |
| `portfind <port>` | Show which process listens on a port |
| `weather [location]` | Quick weather forecast |
| `pubip` | Print your public IP |
| `mkcd <dir>` | Create a directory and cd into it (shell function) |

`mkcd` needs to be sourced since it changes your working directory:

```bash
# Add to .bashrc / .zshrc:
source /usr/local/share/nurutils/mkcd.sh
```

All other tools are standalone scripts.

## License

[MIT](LICENSE)
