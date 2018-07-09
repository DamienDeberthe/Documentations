#!/bin/bash

### USE THIS SCRIPT ON A KALI LINUX OR INSTALL PATATOR COMMAND ###

echo -e "\n-------------------------------\n---------- TEST-PASS ----------\n-------------------------------\n"

#--- Indiquer le nom d'utilisateur et pass ---#
read -p "- Enter a login : " user
read -p "- Enter the pass : " pass
echo -e "\n"

#--- Indiquer les adresses IP des serveurs a tester dans le fichier inc/ip.txt ---#
for line in $(cat ip.txt)
do
echo -e "----------"
echo -e "Test id: $user/$pass on : $line\n"
patator ssh_login user=$user password=$pass host=$line -x ignore:fgrep='Authentication failed.'
echo -e "----------\n\n"

#Pour utiliser un dictionnaire contenu dans un fichier, voici la commande a remplacer
#patator ssh_login user=$user password=FILE0 0=/opt/comptes_QZ/inc/pass.txt host=$line -x ignore:fgrep='Authentication failed.'

done
