### APACHE2


#### Install

```bash
apt-get update \
&& apt-get install apache2
```
For test, open with your navigator and tape IP's server.

#### Minimum configuration

File **conf-available/security.conf** :

ServerTokens OS		-> En tete Apache ; Remplacer par "Prod" pour cacher la version
ServerSignature "Off" -> N'affiche pas sur la page

```bash
sed -i "s|ServerTokens OS|ServerTokens Prod|g" /etc/apache2/conf-available/security.conf
sed -i "s|ServerSignature On|ServerSignature Off|g" /etc/apache2/conf-available/security.conf
a2dismod -f autoindex
```
