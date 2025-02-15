this script can be used to all Databases

#!/bin/bash

#Script to backup all databases

DATE=`date +%Y%m%d%H`
cd /tmp/db-backup/
mysqldump --defaults-extra-file=/root/mysql-crd.cnf  --routines  --skip-lock-tables information_schema | gzip > information_schema.sql.gz
mysqldump --defaults-extra-file=/root/mysql-crd.cnf  --routines  --events --skip-lock-tables mysql | gzip > mysql.sql.gz
mysqldump --defaults-extra-file=/root/mysql-crd.cnf  --routines  ipublish_wpdb | gzip  >  ipublish_wpdb_dbbackup.sql.gz
mysqldump --defaults-extra-file=/root/mysql-crd.cnf  --routines  thpbR9 | gzip  >  thpbR9_dbbackup.sql.gz
mysqldump --defaults-extra-file=/root/mysql-crd.cnf  --routines  edirectory_traffic | gzip  >  edirectory_traffic_dbbackup.sql.gz
mysqldump --defaults-extra-file=/root/mysql-crd.cnf  --routines  --all-databases | gzip  >  All-databases_dbbackup.sql.gz


tar cvf /db-backup/dbbackup-$DATE.tar *.sql.gz
sleep 30
rm -rf /tmp/db-backup/*.sql.gz

[root@server-02 ~]#