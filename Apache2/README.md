### APACHE2


#### Install

```bash
apt-get update \
&& apt-get install apache2
```
For test, open with your navigator and tape IP's server.
<br/><br/>


#### Restart service apache2

```bash
service apache2 restart
```
<br/>


#### Minimum security configuration

```bash
sed -i "s|ServerTokens OS|ServerTokens Prod|g" /etc/apache2/conf-available/security.conf \
&& sed -i "s|ServerSignature On|ServerSignature Off|g" /etc/apache2/conf-available/security.conf \
&& a2dismod -f autoindex
```

* File **conf-available/security.conf** :

ServerTokens OS -> En tete Apache ; Remplacer par "Prod" pour cacher la version
<br/>
ServerSignature "Off" -> N'affiche pas sur la page

* Supprimer autoindex pour ne pas indexer automatiquement les dossiers :
a2dismod -f autoindex
<br/>


#### Minimum 
