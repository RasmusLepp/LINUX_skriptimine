#!/bin/bash
# Antud skript väljastab kasutajale terviust "Tere, Kasutajanimi !".

echo -n "Tere, "
kasutaja=$(whoami)
echo -n "$kasutaja"
echo "!"
