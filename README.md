
# Instalação automatizada do SAPL

Este respositório realiza a instalação do SAPL de forma automatizada, usando vagrant e VirtualBox. Siga os passos a seguir para a utilização tanto no Windows quanto no Linux.


## Instalação

1. Instale o VirtualBox.

[Link VirtualBox](https://www.virtualbox.org/wiki/Downloads)

2. Instale o Vagrant

[Link Vagrant](https://developer.hashicorp.com/vagrant/downloads)


    
## Configuração

1. Clone o repositorio ou faça o download.

2. O arquivo chamado Vagrantfile possui as configurações da VM e cada linha contém o comentário explicativo. 

3. Sobre a linha config.vm.network
```bash
  config.vm.network "private_network", name: "VirtualBox Host-Only Ethernet Adapter", ip: "172.10.10.20"
```
Campo name: para obter o nome da variavel faça o seguinte: 

Abra o VirtualBox.
Clique em Arquivo -> Host Network Manager, ou pelo atalho ctrl + h.
![Logo](https://github.com/cmpbti/vagrant-sapl/blob/main/network.png)

Escreva o Nome exatamente como aparece no VirtualBox.

Campo ip: utilize um ip que esteja na mesma classe em que configurou a passo anterior.

SALVE O ARQUIVO

4. Abra o CMD ou Terminal e navegue até a pasta do projeto.

5. Iniciar/Criar a VM
```bash
  vagrant up
```
Aguarde entre 5 e 10 minutos para que a VM seja criada e o container iniciado. O acesso ao SAPL pode ser realizado através do navegador pelo IP configurado anteriormente, neste exemplo 172.10.10.20.

6. Outros comandos do vagrant

```bash
  vagrant ssh -> acessa a VM via ssh
  vagrant halt -> desliga a VM
  vagrant up -> liga a VM
  vagrant reload -> reinicia a VM e recarrega as configurações do arquivo Vagrantfile, caso tenha sido alterado
  vagrant --help -> lista de todos os comandos
```
