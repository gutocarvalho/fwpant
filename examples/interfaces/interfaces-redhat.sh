#!/bin/bash

# capturando interfaces, otimizado para redhat

export LANG=us

LAN_NIC="eth0"
LAN_IPA=`ifconfig $LAN_NIC | grep inet | grep -v inet6 | awk '{ print $3 }'`
LAN_BRD=`ifconfig $LAN_NIC | grep inet | grep -v inet6 | awk '{ print $4 }'|sed s/Bcast://`
LAN_MSK=`ifconfig $LAN_NIC | grep inet | grep -v inet6 | awk '{ print $5 }'|sed s/Mask://g`
LAN_NET=`ip route show|sed '/eth0/ ! d;/src/ ! d;s/ .*//g'`

echo -e "\ninterface: $LAN_NIC"
echo "endereco ip: $LAN_IPA"
echo "mascara: $LAN_MSK"
echo "endereco de broadcast: $LAN_BRD"
echo -e "endereco de rede: $LAN_NET\n"

DSL_NIC="eth1"
DSL_IPA=`ifconfig $DSL_NIC | grep inet | grep -v inet6 | awk '{ print $3 }'`
DSL_BRD=`ifconfig $DSL_NIC | grep inet | grep -v inet6 | awk '{ print $4 }'|sed s/Bcast://`
DSL_MSK=`ifconfig $DSL_NIC | grep inet | grep -v inet6 | awk '{ print $5 }'|sed s/Mask://g`
DSL_NET=`ip route show|sed '/eth1/ ! d;/src/ ! d;s/ .*//g'`

echo "interface: $DSL_NIC"
echo "endereco ip: $DSL_IPA"
echo "mascara$DSL_MSK"
echo "endereco broadcast: $DSL_BRD"
echo -e "endereco de rede$DSL_NET\n"
