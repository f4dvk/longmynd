#!/bin/bash

# Ne plus demander le mot de passe lors d'un "sudo"
# A executer avant de lancer le script d'installation:
# echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/dont-prompt-$USER-for-password

# Mise à jour
sudo apt-get update
sudo apt-get -y dist-upgrade

sudo apt-get -y install apt-utils
sudo apt-get -y install nano
sudo apt-get -y install mpv

# Installation lecteur image (image de fond).
sudo apt-get -y install pqiv

# Installation Longmynd (RX Minitiouner)
sudo apt-get -y install libasound2-dev
wget https://github.com/f4dvk/longmynd/archive/master.zip
unzip -o master.zip
mv longmynd-master longmynd
rm master.zip
cd longmynd
make

# !!! Pensez a editer config.txt: nano /home/$USER/longmynd/config.txt
# Démarrage auto:
# Dans Applications au démarrage:
# Créer un nouveau programme "Longmynd"
# Commande: sh -c "gnome-terminal --window --full-screen -- /home/$USER/longmynd/full_rx &"

exit
