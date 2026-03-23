#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
VERSION=$(< "$SCRIPT_DIR/VERSION")
VERSION="${VERSION%%$'\n'}"
PKG_NAME="nurutils"
BUILD_DIR=$(mktemp -d)

trap 'rm -rf "$BUILD_DIR"' EXIT

mkdir -p "$BUILD_DIR/DEBIAN"
mkdir -p "$BUILD_DIR/usr/local/bin"
mkdir -p "$BUILD_DIR/usr/local/share/nurutils"

for f in "$SCRIPT_DIR"/bin/*; do
  install -m 755 "$f" "$BUILD_DIR/usr/local/bin/$(basename "$f")"
done

install -m 644 "$SCRIPT_DIR/shell/mkcd.sh" "$BUILD_DIR/usr/local/share/nurutils/mkcd.sh"

sed "s/^Version:.*/Version: ${VERSION}/" "$SCRIPT_DIR/debian/control" > "$BUILD_DIR/DEBIAN/control"

OUTPUT="${SCRIPT_DIR}/dist/${PKG_NAME}_${VERSION}_all.deb"
mkdir -p "$SCRIPT_DIR/dist"
dpkg-deb --build --root-owner-group "$BUILD_DIR" "$OUTPUT"

echo ""
echo "Built: $OUTPUT"
echo "Install: sudo dpkg -i $OUTPUT"
