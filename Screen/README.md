## Screen

Screen is a powerful command use to run background command, like Python or Node.js for example.

<br>

### Install
```bash
apt-get install -y screen
```


<br>

### Configure

#### Create a screen
```bash
screen
```

#### Rename a screen
When you are into your screen, use command: "Ctrl" + "a" and type:
```bash
:sessionname <new_session_name>
```

#### Delete a screen
```bash
screen -X -S <ID_screen> quit
```

<br>

#### Detach to a screen
Use the command "Ctrl" + "a" and after "d".

#### Reatach to a screen
```bash
screen -r <ID_screen>
```

<br>

#### See screen actually run:
```bash
screen -ls
```
The number at the beginning is the ID_screen
* Attached: You are in this screen
* Detached: You are not into this screen, use <code>screen -r <ID_screen></code>

<br><br>

#### Example:
Run a screen with a command:
```bash
screen -dmS <screen_name> <command_to_execute>
```
