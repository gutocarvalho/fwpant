#!/bin/bash

# capturando interfaces no ubuntu

export LANG=us

DSL_NIC="eth0"
DSL_IPA=`ifconfig $DSL_NIC | grep inet | grep -v inet6 | awk '{ print $2 }'| sed s/addr://g`
DSL_BRD=`ifconfig $DSL_NIC | grep inet | grep -v inet6 | awk '{ print $3 }'| sed s/Bcast://g`
DSL_MSK=`ifconfig $DSL_NIC | grep Mask | awk '{ print $4 }'|sed s/Mask://g`
DSL_NET=`ip route show|sed '/eth0/ ! d;/src/ ! d;s/ .*//g'`

echo -e "\ninterface: $DSL_NIC"
echo "endereco ip: $DSL_IPA"
echo "mascara: $DSL_MSK"
echo "endereco de broadcast: $DSL_BRD"
echo -e "endereco de rede: $DSL_NET\n"

LAN_NIC="eth1"
LAN_IPA=`ifconfig $LAN_NIC | grep inet | grep -v inet6 | awk '{ print $2 }'| sed s/addr://g`
LAN_BRD=`ifconfig $LAN_NIC | grep inet | grep -v inet6 | awk '{ print $3 }'| sed s/Bcast://g`
LAN_MSK=`ifconfig $LAN_NIC | grep Mask | awk '{ print $4 }'|sed s/Mask://g`
LAN_NET=`ip route show|sed '/eth1/ ! d;/src/ ! d;s/ .*//g'`

echo "interface: $LAN_NIC"
echo "endereco ip: $LAN_IPA"
echo "mascara: $LAN_MSK"
echo "endereco de broadcast: $LAN_BRD"
echo -e "endereco de rede: $LAN_NET\n"
