#!/bin/bash
DIRECTORY="docker-bin"
if [[ $1 ]]; then DIRECTORY=$1; fi
echo "getting docker-compose in "+$DIRECTORY

if [[ ! -d "$HOME/$DIRECTORY" ]]; then mkdir -p "$HOME/$DIRECTORY"; fi && \
curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-Windows-x86_64.exe > "$HOME/$DIRECTORY/docker-compose.exe" && \
chmod +x "$HOME/$DIRECTORY/docker-compose.exe"