#/bin/bash

read -r -p "Install docker?[y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
    apt-get update
	apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
	curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
	add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
    $(lsb_release -cs) \
    stable"
	apt-get update
	apt-get install docker-ce
	echo -e "Docker successfully install.\nDon't forget to test with 'docker run hello-world'"
else
    echo "Installation abord."
fi
