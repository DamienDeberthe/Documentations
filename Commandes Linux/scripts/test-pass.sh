#!/bin/bash

### USE THIS SCRIPT ON A KALI LINUX OR INSTALL PATATOR COMMAND ###


#--- Indiquer le nom d'utilisateur et pass ---#
read -p "Enter a login : " user
read -p "Enter the pass : " mdp

#--- Indiquer les adresses IP des serveurs a tester dans le fichier inc/ip.txt ---#
for line in $(cat ip.txt)
do
echo -e "----------"
echo -e "Test des id: $user/$mdp sur le serveur : $line\n"
patator ssh_login user=$user password=$mdp host=$line -x ignore:fgrep='Authentication failed.'
echo -e "----------\n\n"

#Pour utiliser un dictionnaire contenu dans un fichier, voici la commande a remplacer
#patator ssh_login user=$user password=FILE0 0=/opt/comptes_QZ/inc/mdp.txt host=$line -x ignore:fgrep='Authentication failed.'

done
