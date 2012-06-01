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
- linux running pc
- tunnel broker (SixXS - https://www.sixxs.net)


Main steps : 
------------

0. Install OpenWRT on a router (Asus RT-N16)

1. Make a Sixxs account and get a tunnel

2. Make a IPv6 subnet

3. Install and configure aiccu 

4. Install and configure radvd

5. test

How to:
------------

Install OpenWRT on Asus RT-N16 
------------

1. Get this code: git pull git://github.com/moozer/TT_Asus_RT-N16_and_OpenWrt.git

2. Run the script: cd TT_Asus_RT-N16_and_OpenWrt followed by ./runme.sh

3. Follow what the script says

4. Resetting to defaults: telnet 192.168.1.1, mtd erase nvram and finally reboot

5. More here : https://github.com/moozer/TT_Asus_RT-N16_and_OpenWrt

Use a tunnel broker, preferably SixXS
------------

1. Make account here -> http://www.sixxs.net/signup/create/ 

- it is reccomended to use a real address and reason because it will be verified
- type address on multiple lines
- type more than one line for a reason
- wait for registration; you will most likely receive confirmation in <24h

2. Request a tunnel -> http://www.sixxs.net/home/requesttunnel/

- select the first option (Dynamic NAT-traversing IPv4 Endpoint using AYIYA)
- next step >> now you have to select a PoP; preferably choose the public one
- use a real reason, in the reason box; preferably more than 1 line
- click on Place request for a new Tunnel >> and wait (it should be emailed to you in under 24h, if not just wait)

Install and configuring aiccu on the router
------------
- connect to the router using telnet/ssh
- run the runme.sh script
- follow instructions
- connect to the router using telnet/ssh
- run the after_reboot.sh script
- follow instructions




Resources
------------
https://www.sixxs.net/
https://www.sixxs.net/wiki/Aiccu/Installing_on_OpenWRT
...to be added

- make aiccu run at startup by typing into the terminal : /etc/init.d/aiccu enable
- start aiccu by typing into the terminal : /etc/init.d/aiccu start
- 


                                          


