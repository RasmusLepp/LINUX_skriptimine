#Koosta skript, mis küsib kasutajalt (tema) vanust ning seejärel seletab, kes sa oled vastavalt sisestatud vanusele.
#!/bin/bash

read -p "Sisesta oma vanus: " vanus

if test $vanus -gt 0 -a $vanus -lt 11
then
    echo "oled laps"

elif test $vanus -ge 11 -a $vanus -lt 18
then
    echo "oled nooruk"

elif test $vanus -ge 18 -a $vanus -lt 63
then
    echo "oled täiskasvanu"

elif test $vanus -ge 63
then
    echo "tere-tere vana kere"

else
    echo "vigane sisend"
fi
