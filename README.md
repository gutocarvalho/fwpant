FWPANT: Firewall Pantaneira
===============================

Descrição
----------------------

Firewall restritiva para 2 interfaces

Autor do projeto
------------------------
 * Guto Carvalho (guto@gutocarvalho.net)
 * Criado em: 2003-05-12

Colaborador(es) do projeto
--------------------------------
 * Ulysses Almeida (ulysses.almeida@gmail.com)
 * Patrick Ximenes (hexaclamys@gmail.com)

Licença
-------------------
 * Creative Commons: Atribuição




Informações sobre diretorios e arquivos
==============================================

### 1. raiz

rc.firewall => script com a firewall

### 2. diretórios

#### 2.1 examples

diretório com alguns exemplos

##### 2.1.1 init.d

examples/init.d/fw.ubuntu => Script de controle da firewall para ubuntu

examples/init.d/fw.redhat => Script de controle da firewall para redhat

##### 2.1.2 interfaces

examples/interfaces/interfaces-ubuntu.sh => Script de exemplo para capturar informacoes de interfaces em distribuicoes ubuntu. 

examples/interfaces/interfaces-redhat.sh => Script de exemplo para capturar informacoes de interfaces em distribuicoes redhat.

#### 2.2 listas

O diretório listas contém listas que são referenciadas na estrutura de firewall.

Só ative as regras referentes as listas se houver algum conteúdo nestes arquivos.

Estes arquivos devem ter um ip por linha.

Arquivos:

  acesso_clientes_especiais.txt
  bloqueio_de_acesso_clientes_lan.txt
  bloqueio_de_acesso_ips_lan.txt
  bloqueio_de_acesso_ips_wan.txt


