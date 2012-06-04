#!/bin/bash
#
# files needed : 
#/etc/opkg.conf ; 
#/etc/config/aiccu ; 
#/etc/config/system ; 
#/etc/config/network ; 
#/etc/config/radvd ;
#/etc/config/firewall
# 

# this is going to be needed 
Pause()
{
OLDCONFIG=`stty -g`
stty -icanon -echo min 1 time 0
dd count=1 2>/dev/null
stty $OLDCONFIG
}

# syntax to see if a file exists or not ; to be used with the backups so we will be sure we dont screw the original files
#  if [ ! -f /tmp/foo.txt ]; // remove the "!" so that it will check if it exists
#then
#    echo "File not found!"
#fi
#

# replacing /etc/opkg.conf file with the one from us
echo 'Updating the opkg configuration file'
cp /etc/opkg.conf /etc/opkg.conf.backup
rm -rf /etc/opkg.conf
cp opkg.conf /etc/
echo 'Done'
#installing aiccu and radvd
echo 'Aiccu and Radvd are being installed'
echo 'Please wait'
echo '...'
opkg update
opkg install aiccu
opkg install radvd
echo 'Done'
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
echo
#we will provide the user with the already configured /etc/config/radvd file, but he only has to edit the prefix line
echo
echo 'You must edit the radvd file with your subnet prefix'
echo 'replace where it says <<put your subnet prefix here>>'
echo 'you will get your subnet prefix from the sixxs home page'
echo 'after you log in; if you cant find it, browse the site'
echo 'for subnet prefix'
echo 'The edit window will open after you press enter'
echo

Pause

nano radvd

cp /etc/config/radvd /etc/config/radvd.backup
rm -rf /etc/config/radvd
cp radvd /etc/config

echo 'radvd config done'
echo
#we will provide the system file already modified with what it needs for the Copenhagen/Denmark time zone
echo 'The system file is being replaced'
cp /etc/config/system /etc/config/system.backup
rm -rf /etc/config/system
cp system /etc/config
echo
#replacing /etc/config/network file with the one from us
echo 'The network file is being replaced'
cp /etc/config/network /etc/config/network.backup
rm -rf /etc/config/network
cp network /etc/config/
echo
#replacing /etc/config/firewall file with the one from us
echo 'The firewall file is being replaced'
cp /etc/config/firewall /etc/config/firewall.backup
rm -rf /etc/config/firewall
cp firewall /etc/config/
echo
#the system must be rebooted here
echo 'the system will now reboot'
echo "don't panic, just run the other script when its up again"
echo 'press enter to reboot'

Pause

reboot

