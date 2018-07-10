### APACHE2


#### Install

```bash
apt-get update \
&& apt-get install -y apache2
```
For test, open with your navigator and tape IP's server.
<br/><br/>


#### Test and restart service apache2

* Test :
```bash
apachectl -t
```

* Restart :
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


#### Minimum Vhost configuration

```bash
<VirtualHost *:80>
        ServerName www.domain.com

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```
<br/>


#### Advanced Vhost configuration

* Change the file index :
```bash
DirectoryIndex index2.html
```

* Restrict with IP access to file :
```bash
<files block.html>
                Order Allow,Deny
                Allow from 192.168.0.1
                Allow from 192.168.1.0/24
</files>       
```

* Restrict with IP access to directory :
```bash
<Directory /var/www/html/dir-blocked>
                Order Allow,Deny
                Allow from 192.168.0.1
                Allow from 192.168.1.0/24
</Directory>
```

* Redirect :
** 302
```bash
Redirect 302 /<dir>/<file_to_redirect> http(s)://<URL_to_redirect>
```
