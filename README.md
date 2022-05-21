# Project Azure Terraform

Criando Infraestrutura Básica no Azure com Terraform. 

O objetivo deste projeto é criar uma infraestrutura básica no Azure de forma rápida com Terraform. Código do Terraform muito simples, sem nenhum tipo de variável.

Segue descrição dos recursos que serão criados:

1 - rg.tf: Cria o Resource Group no Azure

2 - network.tf: Cria a rede virtual no Azure

3 - nsg.tf: Cria o NSG e libera a porta 3389 para acesso RDP no caso de máquinas Windows

4 - nic.tf: Cria interface de rede

5 - pip.tf: IP Público para acesso as VMs através da internet

6 - vmcliente: Cria duas VMs Windows 10 e associa a ela todos os recursos criados anteriormente

7 - vmserver: Cria duas VMs Windows Server 2016 e associa a ela todos os recursos criados anteriormente.

8 - storage.tf: cria uma conta de armazenamento.

Note: Importante lembrar que todos os nomes atribuidos podem ser modificados.
