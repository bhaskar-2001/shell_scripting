#!/bin/bash

<<info
this shell script will take periaodic backups
info

src=$1
dest=$2

timestamp=$(date '+%y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src

aws s3 sync "$dest" s3://bk-backups-b

echo "Backup Completed and uploaded to the AWS s3"
