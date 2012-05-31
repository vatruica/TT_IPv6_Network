#!/bin/bash
#
#this has to be done after the runme.sh script has been run

#lets see if its working
/etc/init.d/aiccu start
/etc/init.d/radvd start

echo "if the following output is something like - ..... - then it's working"
echo "if not ... you've done something wrong!!!"
logread | grep 'check at school'
