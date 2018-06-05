## MEMO COMMANDES LINUX


Afficher la taille des éléments du dossier actuel avec leur date, trié par taille :
```bash
du -sh --time * | sort -hr
```
<br/>

Connaitre le pourcentage de pertes de paquets en direct :
```bash
mtr <X.X.X.X>
```
<br/>

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

Verouiller compte Linux : 
```bash
passwd -l user
```
Déverouiller compte Linux :
```bash
passwd -u user
```
Supprimer utilisateur Linux :
```bash
userdel -rf user
```
Ajouter un compte à un un groupe existant :
```bash
usermod -a -G groupe user
```
Supprimer un utilisateur d'un groupe : 
```bash
deluser user groupe
```
Voir les groupes d'un compte :
```bash
groups toto
```
<br/>

Scanner la plage réseau : 
```bash
nmap -sP 192.168.1.0/24 | sed 's/.*Nmap/\nNmap/'
```
<br/>

Crée rapidement un serveur web pour récuperer des données dans un dossier.
Executer cette commande à la racine du dossier de partage :
```bash
python -m SimpleHTTPServer 80
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

Connaitre le chemin d'execution d'une commande :
```bash
which <commande> #(par exemple: which cat)
```
<br/>

Un fichier contenant une chaine de caractères (exemple: 1234) sur plusieurs lignes, resultat en 1 ligne separé par "espace" :
```bash
cat file1 | xargs
```
Un fichier contenant plusieurs chaines de caractères sur une même ligne separé par "espace", resultat en un fichier contenant une chaine de caractères (exemple: 1234 5678 910) sur plusieurs lignes :
```bash
cat file2 | tr ' ' '\n'
```
