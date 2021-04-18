mysql -u root -p"$MYSQL_ROOT_PASSWORD" demo < /var/backups/backup.sql
mysql -u root -p"$MYSQL_ROOT_PASSWORD" demo < /var/backups/updates.sql
