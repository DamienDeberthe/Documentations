read -r -p "Install VirtualBox?[Y/n] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
        echo "Installing VirtualBox."
        version=$(lsb_release -cs)
        echo "deb https://download.virtualbox.org/virtualbox/debian $version contrib" >> /etc/apt/sources.list
        apt-get update
        apt-get --yes --force-yes install virtualbox-5.2
        echo -e "\n\n***\nVirtualBox successfully install\n***\n\n"
else
    echo "Bye Bye."
fi
