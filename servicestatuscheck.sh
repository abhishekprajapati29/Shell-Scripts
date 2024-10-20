#!/bin/bash
echo "====Status check for $1 service===="
status=`systemctl status $1 | awk 'NR==3 {print}' | cut -d ' ' -f 7`
echo $status
if [ $status = "active"  ];
then
	echo "service is running fine....."
else
	echo "service is not running"
fi
