#!/bin/bash
# ================================
# TERMINAL HERO - Jeu de devinettes
# Auteur : Nawara + Équipe
# Date : Mai 2025
# ================================
# Générer un nombre aléatoire entre 1 et 100
nombre_secret=$(( RANDOM % 100 + 1 ))
tentatives=0
trouve=0
echo "Bienvenue dans TERMINAL HERO : Jeu de devinettes !"
echo "Je pense à un nombre entre 1 et 100... À toi de deviner !"

while [ $trouve -eq 0 ]; do
    read -p "Entre ton nombre : " proposition

    # Vérification que l'entrée est bien un nombre
    if [ $tentatives -ge 10 ]; then
    echo "💀 Trop de tentatives ! Le nombre était : $nombre_secret"
    break
    fi

    ((tentatives++))

    if [ "$proposition" -lt "$nombre_secret" ]; then
        echo " Trop petit ! Essaie encore."
    elif [ "$proposition" -gt "$nombre_secret" ]; then
        echo " Trop grand ! Essaie encore."
    else
        echo " Bravo ! Tu as trouvé le nombre $nombre_secret en $tentatives tentative(s) "
        trouve=1
    fi
done
                              
# fin du jeu