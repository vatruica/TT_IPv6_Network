#!/bin/bash
#
#this has to be done after the runme.sh script has been run

#lets see if its working
echo 'aiccu and radvd are being started'
/etc/init.d/aiccu start
/etc/init.d/radvd start
echo
logread | grep "Couldn't resolve host tic.sixxs.net"
echo "if you see this displayed a couple of times:"
echo "Couldn't resolve host tic.sixxs.net"
echo "then somethings wrong"
echo
echo "if you see something like:"
echo ""
echo "then its working!!"
echo "GJ!"



