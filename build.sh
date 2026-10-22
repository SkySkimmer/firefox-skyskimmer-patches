#!/bin/sh

set -e

if ! [ -f postinst ]; then
  >&2 echo Should be invoked from directory of the postinst file
  exit 1
fi

tmp=$(mktemp -d)

mkdir "$tmp/DEBIAN"
cp control postinst triggers "$tmp/DEBIAN/"
echo 2.0 > "$tmp/DEBIAN/debian-binary"
mkdir -p "$tmp/etc/firefox/policies"
cp policies.json "$tmp/etc/firefox/policies/"

dpkg-deb --build --root-owner-group "$tmp" firefox-skyskimmer-patches.deb

rm -r "$tmp"
