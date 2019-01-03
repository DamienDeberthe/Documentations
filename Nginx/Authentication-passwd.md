## Authentication-passwd


### Create authentication file

Create the file with username and password:
```bash
htpasswd -c <path_to_secret_file> <username>
New password:
Re-type new password:
```

<br>

If the command <code>htpasswd</code> not exist, do like this:
```bash
echo "<username>" > <path_to_secret_file>

openssl passwd -apr1 >> <path_to_secret_file>
Password:
Verifying - Password:
$apr1...........
```
Add this encrypt pass after the line with your <username>

<br>


### NGINX configurations

In Nginx site, add:
```bash
auth_basic "<Text_on_prompt>";
auth_basic_user_file <path_to_secret_file>;
```

Reload Nginx
