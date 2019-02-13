## RSYNC

### Lien utile :

```bash
rsync -av --delete --backup --backup-dir=/tmp/Corbeille --exclude=/mnt/Hd1/trashbox -e "/bin/ssh" root@192.168.0.x:/source /destination/
```

Explication :
-av : le a pour le mode d’archivage classique et le v pour que le mode verbeux.<br>
--delete : permet de supprimer dans la destination les fichiers qui ne sont plus présent dans la source (mode mirroir).<br>
--backup : ajoute une fonction de sauvegarde des fichiers effacées avec la commande --delete ce qui génère une sorte de poubelle des fichiers effacés.<br>
--backup-dir= : indique l’emplacement des fichiers qui sont mis à la poubelle.<br>
--exclude= : permet d’exclure un sous dossier de l’ensemble sauvegardé.<br>
-e "/bin/ssh" : indique l’utilisation d’une connexion à distance pour atteindre les fichiers. Dans notre cas, c’est par ssh et c’est pour la source qui se trouve à distance.<br>
root@192.168.0.x:/source : indique la source. Elle se trouve à distance et on utilise l’utilisateur root sur la machine distante 192.168.0.x<br>

https://www.konectik.com/2016/02/04/sauvegarde-rsync/

