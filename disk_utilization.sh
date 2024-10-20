#!/usr/bin/bash

echo "Checking your disk utilization"
disk_size=`df -h | grep $1 | awk '{print $5}' | cut -d '%' -f 1`
echo "Currently disk utilization is: $disk_size"
if [[ $disk_size -gt 80 ]];
then
	echo "Disk utilization is critical, disk size is: $disk_size"
else
	echo "Disk is healthy with $disk_size% of utilization"
fi
