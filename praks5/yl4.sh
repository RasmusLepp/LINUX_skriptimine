#!/bin/bash
#
# Skript tervitab kasutajat vastavalt süsteemi kellaajale.
# Kasutab automaatselt süsteemi kellaaega ja kasutaja nime.

aeg=$(date +%H)
kasutaja=$(whoami)

if [ "$aeg" -ge 6 ] && [ "$aeg" -lt 12 ]; then
    echo "Tere hommikust, $kasutaja!"

elif [ "$aeg" -ge 12 ] && [ "$aeg" -lt 18 ]; then
    echo "Tere päevast, $kasutaja!"

elif [ "$aeg" -ge 18 ] && [ "$aeg" -lt 22 ]; then
    echo "Tere õhtust, $kasutaja!"

else
    echo "Head ööd, $kasutaja!"
fi
