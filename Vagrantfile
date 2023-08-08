Vagrant.configure("2") do |config|
	# Versão do sistema operacional
    config.vm.box = "ubuntu/jammy64"
	
	# Configuração de memória e cpu
	config.vm.provider "virtualbox" do |v|
		v.memory = 2048
		v.cpus = 2
	end
	
	# Para deixar com DHCP deixe apenas config.vm.network "private_network"
	config.vm.network "private_network", name: "VirtualBox Host-Only Ethernet Adapter", ip: "172.10.10.20"
	config.vm.network "forwarded_port", guest: 80, host: 80
	config.vm.network "forwarded_port", guest: 443, host: 443
	
	# Nome da VM
    config.vm.hostname = "SAPL"
	
	# Copia o arquivo docker-compose para a pasta /tmp/index.html do servidor criado
    config.vm.provision "file", source: "docker-compose", destination: "/home/vagrant/docker-compose"
	
	# Copia o arquivo docker-compose para a pasta /tmp/index.html do servidor criado
    config.vm.provision "file", source: "docker-compose.yaml", destination: "/home/vagrant/docker-compose.yaml"
	
	# Eexecuta o arquivo install.sh no servidor criado
    config.vm.provision "shell", path: "install.sh"
end