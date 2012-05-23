IPv6-stuff
==========

IPv6 tunneling - IPv6 in 4 - setting up an IPv6 only network

Purpose:
------------

This is a technology template that will enable you to set up an IPv6-ONLY network. This will also include stuff about setting up a tunnel (IPv6in4) using a tunnel broker 


Requirements:
------------

- Asus RT-N16 router running OpenWRT
- internet connection
- tunnel broker (SixXS - https://www.sixxs.net)


Main steps : 
------------

0. install openwrt on router 

1. make sixxs account 

2. do ipv6 on the inside (FF80:: only) 

3. Aiccu on Router 

4. DHCPv6,  radvd, fw rules 

5. test

How to:
------------

Install OpenWRT on Asus RT-N16 

1. Get this code: git pull git://github.com/moozer/TT_Asus_RT-N16_and_OpenWrt.git

2. Run the script: cd TT_Asus_RT-N16_and_OpenWrt followed by ./runme.sh

3. Follow what the script says

4. Resetting to defaults: telnet 192.168.1.1, mtd erase nvram and finally reboot

5. More here : https://github.com/moozer/TT_Asus_RT-N16_and_OpenWrt
