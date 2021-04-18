FROM mysql

# Assumes the following vars exist:
ENV MYSQL_ROOT_PASSWORD=${TODO:root_db_user_password}
ENV MYSQL_DATABASE=demo
ENV MYSQL_USER=olakaiconsulting
ENV MYSQL_PASSWORD=${TODO:db_user_password}

# Assumes that context is root
ADD files/db/backup.sql  /var/backups/
ADD files/db/updates.sql  /var/backups/
ADD files/db/backup.sh /docker-entrypoint-initdb.d/00.sh
RUN chmod +x /docker-entrypoint-initdb.d/00.sh

