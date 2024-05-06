#!/bin/bash
       
while true; do
sleep $((60*60))
rsync -avz --exclude={'/etc/hosts','/dev','/mnt','/proc','/sys','/media','/lost+found'} --delete / /media/persistent/backup
# sleep 1 hour
done
        
