## GITHUB PAGES CREATION

GITHUB permet de créer et hébergés des sites web dit statiques : HTML, CSS, JS… Pas de PHP et de base de données.

Pour cela, il existe 2 types de sites possibles :

![alt text](https://github.com/DamienDeberthe/Documentations/blob/master/GitHub%20Pages/GitHub%20Pages%20-%20Difference%20between%20Project%20and%20User.png)

* **User site : Site unique au compte.**
  <br/>Créer un repository à la racine du compte : *user.github.io*
  <br/> URL pour y accéder : user.github.io
  
* **Project Site : Nombre illimités.**
  <br/>Créer un repository, par exemple : « *Project-Page* » et créer une branche nommée **gh-pages** qui contient le fichier index.html.
  <br/>L'URL pour y accéder sera : user.github.io/Project-Page
  <br/>**ATTENTION** : Le nom du dossier est sensible à la casse
* BONUS : Pour customiser l'URL, nom de domaine, thèmes etc... Se rendre dans "Settings" du repository paragraphe "GitHub Pages"


--<br/>
Sources: 
https://learntocodewith.me/tutorials/github-pages/


## GITHUB PAGES DNS PUBLIC

GITHUB permet l'hebergement mais aussi la mise en ligne de ces sites web avec son propre nom de domaine !

Pour cela il y a 2 étapes à suivre :

* **Création du fichier CNAME dans le repository :**
  <br/>Créer un fichier à la base du repository nommé : CNAME. Remplissez le seulement avec le nom de domaine que vous allez vouloir utiliser. (**ATTENTION** : Le fichier doit être créer dans la branche gh-pages).
  <br/>Exemple : *github-pages.deberthe.fr*
  
* **Création du CNAME sur le serveur DNS :**
  <br/>Créer un enregistrement CNAME 
