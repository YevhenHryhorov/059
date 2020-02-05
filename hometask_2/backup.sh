#!/bin/sh
list=/tmp/out
wheretofind=$1
wheretostore=$2
backupdate=$(date +%Y%m%d)

mkdir $wheretostore/$backupdate 


find $wheretofind -type f -mtime -1 -print > $list
rsync -av -n $(cat $list) $backupdate 
