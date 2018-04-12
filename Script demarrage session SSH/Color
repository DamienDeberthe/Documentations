#!/bin/bash

#Copie du fichier /etc/motd
cp /etc/motd /etc/motd.bak

#Debut du fichier
echo -e "\n\033[1;32m########################################\033[0m\n" > /etc/motd


#Nom de machine
echo -e "\033[31mBienvenue sur la machine:\033[0m $HOSTNAME \n" >> /etc/motd


#Version de machine:
vers=`cat /etc/issue | sed -e "s/[\]//"`
echo -e "\033[1;32m- Version:\033[0m $vers" >> /etc/motd


#Adresse IP
echo -e "\n\033[1;32m- Adresse(s) IP:\033[0m" >> /etc/motd
ip a | grep 192. | awk '{print $7 " " $2 " " }' >> /etc/motd


#Route par defaut
gateway=`ip route | grep default | awk '{print $3 " " $2 " " $5 }'`
echo -e "\n\033[1;32m- Route par defaut:\033[0m $gateway" >> /etc/motd
#ip route | grep default | awk '{print $1 " " $3 " " $2 " " $5 }' >> /etc/motd


#Taille disque:
size=`df -h | grep /dev/sda1 | awk '{print $2}'`
rest=`df -h | grep /dev/sda1 | awk '{print $5}'`

echo -e "\n\033[1;32m- Taille du disque dur:\033[0m $size" >> /etc/motd
echo -e "  \033[1;32mUtilisé à\033[0m $rest" >> /etc/motd

#Protocole d'ecoutes:
echo -e "\n\033[1;32m- Protocole d'ecoutes:\033[0m" >> /etc/motd
netstat -lntup | grep tcp | grep -v tcp6 | awk '{print $7}' | sed -e "s/[0-9][0-9][0-9][/]//" | sed '/^$/d'>> /etc/motd
netstat -lntup | grep udp | grep -v udp6 | awk '{print $7}' | sed -e "s/[0-9][0-9][0-9][/]//" | sed '/^$/d' >> /etc/motd

#Fin du fichier
echo -e "\n\033[1;32m########################################\n\033[0m" >> /etc/motd

exit 0
