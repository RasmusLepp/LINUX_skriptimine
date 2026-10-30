#!/bin/bash
# Skript arvutab täielikult täidetud busside arvu ja maha jäänud inimeste arvu

# Kasutajalt sisendite küsimine
echo -n "Sisesta reisijate arv: "
read reisijad

echo -n "Sisesta kohtade arv bussis: "
read kohtade_arv

# Arvutused expr käsu abil
# Täielikult täidetud busside arv (täisarvuline jagamine)
bussid=$(expr $reisijad / $kohtade_arv)

# Maha jäänud inimeste arv (jäägi leidmine)
maha_jaid=$(expr $reisijad % $kohtade_arv)

# Tulemuste väljastamine
echo "Täielikult täidetud bussi(sid): $bussid"
echo "Maha jäänud inimesi: $maha_jaid"
