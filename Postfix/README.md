## POSTFIX

### GMAIL

* Source: https://www.howtoforge.com/tutorial/configure-postfix-to-use-gmail-as-a-mail-relay/

Install:
```bash
apt-get update && apt-get -y install postfix mailutils
```

Select "No configuration".
<br/><br/>

Edit file <code>/etc/postfix/sasl_passwd</code> with content:
```bash
[smtp.gmail.com]:587    <username>@gmail.com:<password>
```

<br/>

Right to this file and compile datas for Postfix:
```bash
chmod 600 /etc/postfix/sasl_passwd
postmap /etc/postfix/sasl_passwd
```

<br/>

File <code>/etc/postfix/main.cf</code>:
```bash
#myhostname = <change_with_what_you_want> #This will be use in the mail information
relayhost = [smtp.gmail.com]:587
smtp_use_tls = yes
smtp_sasl_auth_enable = yes
smtp_sasl_security_options =
smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd
smtp_tls_CAfile = /etc/ssl/certs/ca-certificates.crt
```

<br/>

Restart postfix service:
```bash
service postfix restart
```

<br/>

Go to: [link](https://myaccount.google.com/lesssecureapps) and disable security.

<br/><br/>

Test with:
```bash
echo "Email send from '$HOSTNAME'" | mail -s "Mail test" <destinataire>@domain.com
```
