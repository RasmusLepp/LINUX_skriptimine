#!/bin/bash
# Skript arvutab küpsisetordi valmistamiesks vajaliku küpsisepakkide arvu

# Kasutajalt sisendite küsimine
echo -n "Sisesta aluskandliku pikkus (cm): "
read kandik_pikkus

echo -n "Sisesta aluskandiku laius (cm): "
read kandik_laius

echo -n "Sisesta küpsise pikkus (cm): "
read kypsis_pikkus

echo -n "Sisesta küpsise laius (cm): "
read kypsis_laius

echo -n "Sisesta tordi kihtide arv: "
read kihid

echo -n "Sisesta küpsiste arv ühes pakis: "
read pakis

# Arvutused expr käsu abil
# Küpsiste arv pikkuses ja laiuses
pikkuses=$(expr $kandik_pikkus / $kypsis_pikkus)
laiuses=$(expr $kandik_laius / $kypsis_laius)

# Küpsiste arv ühes kihis ja kokku
kypsiseid_kihis=$(expr $pikkuses \* $laiuses)
kokku_kypsiseid=$(expr $kypsiseid_kihis \* $kihid)

# Pakkide arvu arvutamine (ümardatult üles, et küpsiseid puudu ei jääks)
# Täisarvulise jagamise ülesümardamise valem: (kokku + pakis - 1) / pakis
abi=$(expr $kokku_kypsiseid + $pakis -1)
pakkide_arv=$(expr $abi / $pakis)

# Tulemuse väljastamine
echo "----------------------------------------"
echo "Tordi jaoks läheb vaja kokku $kokku_kypsiseid küpsist."
echo "Poest tuleb osta $pakkide_arv pakk(i) küpsiseid."
