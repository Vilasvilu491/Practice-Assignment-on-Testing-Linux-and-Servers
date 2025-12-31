#!/bin/bash
DATE=$(date +%F)
BACKUP="/backups/apache_backup_$DATE.tar.gz"

tar -czvf $BACKUP /etc/httpd /var/www/html
tar -tzf $BACKUP >> backups/backup_verification.log
