#!/bin/bash

# Instalação docker
sudo curl -fsSL https://get.docker.com/ | bash

# Instalação docker-compose
sudo mv /home/vagrant/docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Execução do container
sudo docker-compose up -d
