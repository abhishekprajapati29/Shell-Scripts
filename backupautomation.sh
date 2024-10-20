#!/bin/bash

backup_dirs="${@:2}"
dest_dir=$1
mkdir -p $dest_dir
backup_date=$(date +%b-%d-%y)

echo "Starting backup of: ${backup_dirs[@]}"

for i in "${backup_dirs[@]}"; do
sudo tar -czf $i-$backup_date.tar.gz $i
if [ $? -eq 0 ]; then
echo "$i backup succeeded."
else
echo "$i backup failed."
fi
cp $i-$backup_date.tar.gz $dest_dir
if [ $? -eq 0 ]; then
echo "$i transfer succeeded."
else
echo "$i transfer failed."
fi

sudo rm *.gz
done

echo "Backup is done."
