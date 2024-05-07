#!/bin/bash
       
while true; do
sleep $((60*60))
rsync -avz --exclude={'/etc/hostname','/etc/resolv.conf','/etc/hosts','/dev','/mnt','/proc','/sys','/media','/lost+found'} --delete / /media/persistent/state
done
