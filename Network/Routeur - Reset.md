### Reset Router Using Router Commands Without ENABLE
To reset your router to its factory-default configuration using router commands:

* With your router powered off, connect the power cord to the router, and plug the power cord into your power source.

* Connect your laptop to the console port on your router with the console cable.

* Power on the router and connect the console cable.

* On your laptop, start Putty and during the boot sequence use special command "break" :
```bash
confreg 0x2142
reset
```

### Reset Router Using Router Commands With ENABLE

* In the router CLI, enter the commands in boldface to erase the existing configuration on your router and reload the factory-default configuration on the router: router> enable
```bash
router# write erase
Erasing the nvram filesystem will remove all configuration files! Continue? [confirm] <Press Enter key>
router# reload
Proceed with reload? [confirm] <Press Enter key>
-OR-
Would you like to enter the initial configuration dialog? [yes|no] no <Press Enter key>
–OR–
Do you want to save the configuration of the AP? [yes|no] no <Press Enter key>
```

* Wait until the reload or erase finishes and a CLI prompt or completion message appears.

* Close the terminal emulator window on your laptop.

* Power off the router.
