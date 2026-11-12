#!/bin/bash
# Skript väljastab kasutajale praeguse kuupäeva, kellaaja ja jooksva kuu kalendri

echo
date +"Today is %A, %B %d, %Y"
date +"Time is %H:%M"
echo
date +"Calendar of %B %Y"
cal | tail -n 7
