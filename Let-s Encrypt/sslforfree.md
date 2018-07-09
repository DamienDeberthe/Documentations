### sslforfree.com

SSLforfree est un site permettant de générer vos certificats Let's Encrypt directement en ligne.
<br/>
* Rendez-vous sur le site : https://www.sslforfree.com et renseignez votre domaine (pour un certificat Wildcard : <i>*.domain.com</i>).

* Selectionnez "Manually Verfiy Domain" et ajouter le champ TXT sur votre domaine comme suit (ceci est un exemple):
```bash
_acme-challenge.domain.com IN TXT XRq2tVV4427XF3V5Dg33fv9NaWd7MYkbkreh38ZGe37
```

* Récuperez ensuite vos certificats. 
Vous pouvez également supprimer l'enregistrement TXT sur votre domaine, il est utile uniquement pour la génération des certificats.
