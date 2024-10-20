#!/usr/bin/bash

echo "This program get the top 5 largest file in the file system passed via argument"
echo "Searching in: $1"
top5=$(du -ah $1 | sort -hr | head -n 5 > filename.txt)
echo "Top 5 files are: "
cat filename.txt
