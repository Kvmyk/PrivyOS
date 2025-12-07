#!/bin/bash
set -e

echo "=== Rozpoczynanie budowania PrivyOS (Docker) ==="
echo "Upewnij się, że masz zainstalowanego Dockera."

# Komenda budująca w kontenerze Debian Bookworm
docker run -it --rm --privileged \
  -v "$(pwd):/build" \
  -w /build \
  debian:bookworm \
  /bin/bash -c " \
    apt-get update && \
    apt-get install -y live-build syslinux-utils syslinux-common xorriso grub-efi-amd64-bin grub-pc-bin mtools dosfstools && \
    lb clean && \
    lb config && \
    lb build"

echo "=== Budowanie zakończone ==="
echo "Twój obraz ISO powinien znajdować się w bieżącym katalogu."
