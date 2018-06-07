## MEMO COMMANDES LINUX


### Comptes Linux
Ajouter un compte Linux : (les deux commandes sont équivalentes)
```bash
adduser user1
```
```bash
groupadd user1 \
&& useradd -g user1 -s /bin/bash -d /home/user1 -m user1 \
passwd user1
```
Supprimer utilisateur Linux :
```bash
userdel -rf user
```
<br/>

Ajouter un compte à un un groupe existant :
```bash
usermod -a -G groupe user
```
Voir les groupes d'un compte :
```bash
groups toto
```
Supprimer un utilisateur d'un groupe : 
```bash
deluser user groupe
```
<br/>

Verouiller compte Linux : 
```bash
passwd -l user
```
Déverouiller compte Linux :
```bash
passwd -u user
```
<br/>


### Manipulation de chaines de caractères
#### Awk
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
* L’option "-i" équivaut à l’insertion. Cette option permet de modifier directement le contenu du fichier. Pour vérifier le résultat il est possible d’exécuter la commande sed sans l’option "-i" au préalable.
* Si les chaines de caractère contiennent des guillemet (") pour éviter tous problèmes il est conseillé d’utiliser l’apostrophe (')

Dans un fichier, supprimer toutes les lignes contenant des commentaires (commençant par # par exemple) :
```bash
sed -i "/#/d" file
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


### Autres/Divers
Afficher la taille des éléments du dossier actuel avec leur date, trié par taille :
```bash
du -sh --time * | sort -hr
```
Equivalent TreeSize :
```bash
wget https://raw.githubusercontent.com/DamienDeberthe/Documentations/master/Commandes%20Linux/scripts/treesize.sh \
&& chmod +x treesize.sh \
&& bash treesize.sh
```
Afficher au format HTML (*-H TITLE_OF_TREE*), toute l'arborescence depuis un dossier en triant par taille de fichiers (*--sort=size*) :
```bash
tree /var/ -F -h --sort=size --du --nolinks -C -H TITLE_OF_TREE -T TITLE_OF_PAGE > index.html
```
<br/>


Crée rapidement un serveur web pour récuperer des données dans un dossier.
Executer cette commande à la racine du dossier de partage :
```bash
python -m SimpleHTTPServer 80
```
<br/>

Connaitre le pourcentage de pertes de paquets en direct (**Nécessaire** : <code>apt-get install mtr</code>):
```bash
mtr <X.X.X.X>
```
<br/>

Scanner la plage réseau : 
```bash
nmap -sP 192.168.1.0/24 | sed 's/.*Nmap/\nNmap/'
```
<br/>

Envoi de mail en ligne de commande :
```bash
echo "Email send from '$HOSTNAME'" | mail -s "Mail test" <destinataire>@domain.com
```
Afficher les mails en attente : 
```bash
mailq
```
<br/>
