#!/bin/bash
#
# files needed : /etc/opkg.conf ; /etc/config/aiccu ; /etc/config/system ; /etc/config/network ; /etc/config/radvd
# 

# this is going to be needed 
Pause()
{
OLDCONFIG=`stty -g`
stty -icanon -echo min 1 time 0
dd count=1 2>/dev/null
stty $OLDCONFIG
}

# replacing /etc/opkg.conf file with the one from us
cp /etc/opkg.conf /etc/opkg.conf.backup
rm -rf /etc/opkg.conf
cp opkg.conf /etc/

# replacing /etc/config/network file with the one from us
cp /etc/config/network /etc/config/network.backup
rm -rf /etc/config/network
cp network /etc/config

#installing aiccu and radvd
opkg update
opkg install aiccu
opkg install radvd

#user is ORDERED to edit the aiccu file
echo 'Please edit the aiccu file with your credentials'
echo 'The edit command will be issued after you press enter'
echo 'press Ctr+X and they Y after finishing your edit'

Pause

nano aiccu

#the aiccu file that was edited by the user is being copied where it should be
cp /etc/config/aiccu /etc/config/aiccu.backup
rm -rf /etc/config/aiccu
cp aiccu /etc/config/

echo 'aiccu config done'

#we will provide the user with the already configured /etc/config/radvd file, but he only has to edit the prefix line

echo 'You must edit the radvd file with your subnet prefix'
echo 'The edit window will open after you press enter'
echo 'You must replace the "replace me" string with your subnet prefix which you can find on your home page on sixxs'

Pause

nano radvd

cp /etc/config/radvd /etc/config/radvd.backup
rm -rf /etc/config/radvd
cp radvd /etc/config

echo 'radvd config done'

#we will provide the system file already modified with what it needs for the Copenhagen/Denmark time zone
cp /etc/config/system /etc/config/system.backup
rm -rf /etc/config/system
cp system /etc/config

#the system must be rebooted here
echo 'the system will now reboot'
echo 'don't panic, just run the other script when its up again'
echo 'press enter to reboot'

Pause

reboot

#lets see if its working
/etc/init.d/aiccu start
/etc/init.d/radvd start

echo 'if the following output is something like - ..... - then it's working'
echo 'if not ... you've done something wrong!!!
logread | grep 'what was it?!'

