Instalação
=======================
Após descompactar o arquivo com a firewall
mova o diretorio rules para o local desejado.

padrao redhat/centos
-----------------------------------

Configuracoes em redhat ou similares

copie o arquivo fw.redhat para o /etc/init.d/

<pre>
[usuario@servidor /]# mv /root/rules/fw.redhat /etc/init.d/fw
</pre>

torne-o executavel com o comando abaixo:

<pre>
[usuario@servidor /]# chmod 700 /etc/init.d/fw
</pre>

Ajuste as variaveis internas.

torne a firewall executavel com o comando abaixo:

<pre>
[usuario@servidor /]# chmod 700 /root/rules/rc.cliente
</pre>

para a firewall rodar na inicializacao digite apos a copia:

<pre>
[usuario@servidor /]# chkconfig --add fw
</pre>

<pre>
[usuario@servidor /]# chkconfig fw on
</pre>

agora edite o arquivo fw.cliente e configure de acordo
com suas necessidades, vide exemplo abaixo:

<pre>
[usuario@servidor /]# vi /root/rules/rc.cliente
</pre>

para executar a firewall no redhat:

<pre>
[usuario@servidor /]# service fw start
</pre>

para outros comandos

<pre>
[usuario@servidor /]# service fw help
</pre>

padrao debian/ubuntu
--------------------------

Configuracoes em debian e similares

copie o arquivo fw.ubuntu para /etc/init.d

<pre>
[usuario@servidor /]# mv /root/rules/fw.ubuntu /etc/init.d/
</pre>

Ajuste as variveis internas.

torne-o executavel com o comando abaixo:

<pre>
[usuario@servidor /]# chmod 700 /etc/init.d/fw
</pre>

torne a firewall executavel com o comando abaixo:

<pre>
[usuario@servidor /]# chmod 700 /root/rules/rc.cliente
</pre>

para a firewall rodar na inicializacao digite apos a copia:

<pre>
[usuario@servidor /]# update-rc.d fw defaults
</pre>

agora edite o arquivo fw.cliente e configure de acordo
com suas necessidades, vide exemplo abaixo:

<pre>
[usuario@servidor /]# vi /root/rules/rc.cliente
</pre>

para executar a firewall no ubuntu:

<pre>
[usuario@servidor /]# /etc/init.d/fw start
</pre>

para outros comandos

<pre>
[usuario@servidor /]# /etc/init.d/fw help
</pre>
