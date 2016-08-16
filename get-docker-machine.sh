#!/bin/bash
DIRECTORY="docker-bin"
if [[ $1 ]]; then DIRECTORY=$1; fi
echo "getting docker-machine in "$DIRECTORY

if [[ ! -d "$HOME/$DIRECTORY" ]]; then mkdir -p "$HOME/$DIRECTORY"; fi && \
curl -L https://github.com/docker/machine/releases/download/v0.8.0/docker-machine-Windows-x86_64.exe > "$HOME/$DIRECTORY/docker-machine.exe" && \
chmod +x "$HOME/$DIRECTORY/docker-machine.exe"
