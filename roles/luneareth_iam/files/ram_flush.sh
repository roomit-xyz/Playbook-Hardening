#!/bin/bash
#
# Dwiyan Galuh 
# Flush RAM
#
#
#
#

check_free=`free -m | grep Mem | awk '{print $4}' | tr -d " "`


if [ $check_free -lt 500 ]
then
   echo 3 > /proc/sys/vm/drop_caches
else
   echo "System Is Fine"
fi
