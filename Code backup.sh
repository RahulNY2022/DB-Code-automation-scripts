
Code backup script


[root@ip-192-31-3-10 automatic-backup]# cat code-backup.sh
#!/bin/bash
DATE=`date +%Y%m%d`
cd /var/www/html/
PROJECT1="Test-mark-website"
#PROJECT2="Test-market-website-uat"
tar -cvzf  "/Code-Backup/$PROJECT1-code-backup-$DATE".tgz Test-Code
#tar -cvzf  "/Code-Backup/$PROJECT2-code-backup-$DATE".tgz Test-Code_v2
sleep 10
find /Code-Backup/ -mindepth 1 -mtime +7 -delete
[root@ip-192-31-3-10 automatic-backup]#