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