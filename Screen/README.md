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

#### Detach to a screen
Use the command "Ctrl" + "a" and after "d".

#### Reatach to a screen
```bash
screen -r <ID_screen>
```

#### See screen actually run:
```bash
screen -ls
```
The number at the beginning is the ID_screen

#### Delete a screen
```bash
screen -X -S <ID_screen> quit
```
