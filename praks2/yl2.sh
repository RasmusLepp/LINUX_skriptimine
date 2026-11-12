#!/bin/bash
#
# Skript tervitab automaatselt sisse loginud kasutajat.

echo -n "Tere, "

kasutaja=$(whoami)

echo -n "${kasutaja^}"

echo "!"
