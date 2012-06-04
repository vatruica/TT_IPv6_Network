#!/bin/bash
#
# the script that will copy the backups back to their place
#
# files needed : 
#/etc/opkg.conf ; 
#/etc/config/aiccu ; 
#/etc/config/system ; 
#/etc/config/network ; 
#/etc/config/radvd ;
#/etc/config/firewall
# 


cp /etc/opkg.conf.backup /etc/opkg.com

cp /etc/config/aiccu.backup /etc/config/aiccu

cp /etc/config/system.backup /etc/config/system

cp /etc/config/network.backup /etc/config/network

cp /etc/config/radvd.backup /etc/config/radvd

cp /etc/config/firewall.backup /etc/config/firewall
