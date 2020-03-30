## MEMO COMMANDES LINUX

Lien utile : https://cheat.sh/

<br/>

### Administration
Lister toutes les connexions avec la machine Linux + numéros de ports (Debian 9 : paquet net-tools) :
```bash
netstat -l
```
Lister tout les processus en cours, avec arborescence ( f ) :
```bash
ps auxf
```
<br/>


### Comptes Linux
Ajouter un compte Linux : (les deux commandes sont équivalentes)
```bash
adduser <user1>
```
```bash
groupadd <user1> \
&& useradd -g <user1> -s /bin/bash -d /home/<user1> -m <user1> \
&& passwd <user1>
```
Supprimer utilisateur Linux :
```bash
userdel -rf <user1>
```
<br/>

Ajouter un compte à un un groupe existant :
```bash
usermod -a -G groupe <user1>
```
Voir les groupes d'un compte :
```bash
groups <user1>
```
Supprimer un utilisateur d'un groupe : 
```bash
deluser <user1> <group>
```
<br/>

Verouiller compte Linux : 
```bash
passwd -l <user1>
```
Déverouiller compte Linux :
```bash
passwd -u <user1>
```
<br/>


### Manipulation de chaines de caractères
#### Awk
Le résultat d'une commande contenant plusieurs colonnes, séparé par des espaces. Afficher la première colonne :
```bash
ls -l | awk '{print $1}'
```
Un fichier contenant plusieurs colonnes, séparé par des espaces. Afficher la première colonne :
```bash
awk '{print $1}' file
```
Un fichier contenant plusieurs colonnes, séparé par des espaces. Afficher la première et la troisième colonne :
```bash
awk '{print $1 $3}' file
```
Un fichier contenant plusieurs colonnes, séparé par des espaces. Afficher la première et la troisième colonne. Ajouter une flèche (par exemple) entre ces deux colonnes :
```bash
awk '{print $1" -> "$3}' file
```
Un fichier contenant plusieurs colonnes, séparé par des caractères autre que des espaces (par exemple ":"). Afficher la première colonne :
```bash
awk -F ":" '{print $1}' /etc/passwd
```

#### Sed
Ajouter une ligne au début du résultat d'une commande :
```bash
cat /etc/passwd | sed '1i\UTILISATEUR DE LA MACHINE :\'
```
Ajouter une ligne au début du résultat d'une commande + saut de ligne de la deuxième :
```bash
cat /etc/passwd | sed '1i\UTILISATEUR DE LA MACHINE :\ | sed '2i\\'
```

* L’option "-i" équivaut à l’insertion. Cette option permet de modifier directement le contenu du fichier. Pour vérifier le résultat il est possible d’exécuter la commande sed sans l’option "-i" au préalable.
* Si les chaines de caractère contiennent des guillemet (") pour éviter tous problèmes il est conseillé d’utiliser l’apostrophe (')

Dans un fichier, supprimer toutes les lignes contenant des commentaires (commençant par # par exemple) :
```bash
sed -i "/#/d" file
```
Pour supprimer les lignes vides :
```bash
sed -i "/^$/d" file
```
Dans un fichier, remplacer une chaine de caractère spécifique par une autre :
```bash
sed -i "s|SEARCH_CONTENT|REPLACE_CONTENT|g" file
```
Dans un fichier, ajouter une chaine de caractère après une chaine de caractère spécifique, sur la ligne suivante :
```bash
sed -i "/SEARCH_CONTENT/aADD_CONTENT" file
```

#### Xargs
Un fichier contenant une chaine de caractères (exemple: 1234) sur plusieurs lignes, resultat en 1 ligne separé par "espace" :
```bash
cat file1 | xargs
```
Un fichier contenant plusieurs chaines de caractères sur une même ligne separé par "espace", resultat en un fichier contenant une chaine de caractères (exemple: 1234 5678 910) sur plusieurs lignes :
```bash
cat file2 | tr ' ' '\n'
```
<br/>


### Scripts
#### Date
Pour dater dans un fichier de log, créer la variable (résultat : dd/mm/yyyy:hh:mm:ss) :
```bash
date=`date +"%m/%d/%Y:%T"`
```
<br/>


### Variables
#### Temporaire
Pour déclarer une variable permanente :
```bash
export <my_var>="<var1>"
```
#### Permanente
Pour rendre une variable permanente, il faut l’ajouter au fichier <code>/etc/environment</code> :
```bash
<my_var>="<var1>"
```
Il faut ensuite recharger l'environment :
```bash
source /etc/environment
```
#### Vérification
Pour afficher une variable :
```bash
echo $<my_var>
```
#### Resultat commande dans une commande
Pour afficher le résultat d'une commande dans une commande :
```bash
echo "Today is: $(date +"%Y%m%d")"
```
<br/>


### Liste dossiers 

Afficher seulement les dossiers :
```bash
tree -d
```

Afficher les dossiers avec un niveau de 3 :
```bash
tree -d -L 3
```

Afficher les dossiers sauf le/les dossier(s) contenant "test" :
```bash
tree -d -I test
```
<br/>


### Recherche
Rechercher un fichier sur la machine : 
```bash
find / -type f -iname "*file*" #Conserver les étoiles avant et après le nom du fichier
```
Rechercher un dossier sur la machine :
```bash
find / -type d -iname "*dir*" #Conserver les étoiles avant et après le nom du dossier
```
Rechercher un fichier dans un dossier :
```bash
cd <directory> && find -name "*file*" #Conserver les étoiles avant et après le nom du fichier
```
<br/>

Rechercher une chaine de caractère dans les fichier présent dans le dossier actuel :
```bash
grep SEARCH *
```
Rechercher une chaine de caractère dans les fichiers présent dans le dossier actuel et récursivement :
```bash
rgrep SEARCH *
```
<br/>


### Network
Ajouter une route Debian. Ajouter au fichier <code>/etc/network/interfaces</code> :
```bash
#up route add -net <network_destination> gw <IP_gateway> dev <interface_IP_gateway>
#Exemple add route static
up route add -net 192.168.99.0/24 gw 192.168.1.0 dev eth0
```
<br/>

Connaitre le pourcentage de pertes de paquets en direct (**Nécessaire** : <code>apt-get install -y mtr</code>) :
```bash
mtr <X.X.X.X>
```
<br/>

Scanner la plage réseau (**Nécessaire** : <code>apt-get install -y nmap</code>) : 
```bash
nmap -sP 192.168.1.0/24 | sed 's/.*Nmap/\nNmap/'
```
<br/>


### Stresstest
**Prérequis** : installer le paquet **stress** <code>apt-get install -y stress</code>
<br/>
Simuler la RAM à 50% et 1 CPU à 100% :
```bash
stress --vm-bytes $(awk '/MemAvailable/{printf "%d\n", $2 * 0.5;}' < /proc/meminfo)k --vm-keep -m 1
```
Simuler la RAM à 90% et 2 CPU à 100% :
```bash
stress --vm-bytes $(awk '/MemAvailable/{printf "%d\n", $2 * 0.9;}' < /proc/meminfo)k --vm-keep -m 2
```
<br/>


### MYSQL/MariaDB
Authorize remote connection :
```bash
rgrep "bind-address" /etc/mysql/*
### CHANGE THE BIND ADDRESS WITH 0.0.0.0
bind-address            = 0.0.0.0
```
<br/>

Create database :
```bash
CREATE DATABASE IF NOT EXISTS <new_database>;
```
<br/>

Create an intern user :
```bash
CREATE USER '<user>'@'localhost' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON <new_database>.* TO '<user>'@'localhost' IDENTIFIED BY '<password>';
FLUSH PRIVILEGES;
```
Update an user for remote access :
```bash
UPDATE mysql.user SET host = '%' WHERE host = 'localhost' AND user = '<user>';
UPDATE mysql.user SET host = '192.168.x.%' WHERE host = 'localhost' AND user = '<user>';
```
<br/>

Create user with remote access :
```bash
CREATE USER '<user>'@'%' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON <new_database>.* TO '<user>'@'%' IDENTIFIED BY '<password>';
FLUSH PRIVILEGES;
```
<br/>

List users :
```bash
use myslq;
select * from user;
select * from user where user='<user>';
```
<br/>


### LVM
Physical volume --> volume group ---> logical group
<br/>
Afficher les volumes physiques et volumes groupes:
```bash
pvdisplay 
```
Afficher les volumes logiques:
```bash
lvdisplay
```
<br/>


### Autres/Divers
Afficher la taille des éléments du dossier actuel avec leur date, trié par taille :
```bash
du -sh --time * | sort -hr
```
Equivalent TreeSize (permet d'afficher la taille des dossiers, du plus gros au plus leger) :
```bash
wget https://raw.githubusercontent.com/DamienDeberthe/Documentations/master/Commandes%20Linux/scripts/treesize.sh \
&& chmod +x treesize.sh \
&& bash treesize.sh
```
Afficher au format HTML (*-H TITLE_OF_TREE*), toute l'arborescence depuis un dossier en triant par taille de fichiers (*--sort=size*) et affichant les types de file  :
```bash
tree <dir> -F -h --sort=size --du --nolinks -C -H TITLE_OF_TREE -T TITLE_OF_WEB_PAGE > index.html
```
<br/>


Crée rapidement un serveur web pour récuperer des données dans un dossier.
Executer cette commande à la racine du dossier de partage :
```bash
python -m SimpleHTTPServer 80
```
<br/>

Envoi simple de mail en ligne de commande :
```bash
echo "Email send from '$HOSTNAME'" | mail -s "Mail test" <destinataire>@domain.com
```
Envoi simple de mail en ligne de commande, en ajoutant l'expéditeur :
```bash
echo "Email send from '$HOSTNAME'" | mail -s "Mail test" -a "from:user@domain.com" <destinataire>@domain.com
```
Envoi de mail en ligne de commande en utilisant un fichier html comme contenu :
```bash
mailx -a 'Content-Type: text/html' -s "Subject" <destinataire>@domain.com <index.htm
```
Afficher les mails en attente : 
```bash
mailq
#OR
postqueue -p
```
Pour supprimer tout les mails en attentes :
```bash
postsuper -d ALL
```
<br/>
