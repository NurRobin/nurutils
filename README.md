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
| `extract <archive>` | Universal archive extractor (tar, zip, 7z, rar, deb, rpm, zst, ...) |
| `epoch [timestamp]` | Convert between unix timestamps and dates. No arg prints current epoch |
| `biggest [n] [dir]` | Show the N largest files in a directory tree |
| `cert <domain>` | Show SSL certificate info (issuer, expiry, SANs) |
| `retry [-n N] [-d S] <cmd>` | Retry a command up to N times with S second delay |
| `json [file]` | Pretty-print JSON with color (uses jq, falls back to python3) |
| `watchlog <logfile> <cmd>` | Run a command in background and tail its logfile |
| `portfind <port>` | Show which process listens on a port |
| `weather [location]` | Quick weather forecast via wttr.in |
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
