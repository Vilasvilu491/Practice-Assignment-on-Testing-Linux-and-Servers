#!/bin/bash
DATE=$(date +%F)
BACKUP="/backups/nginx_backup_$DATE.tar.gz"

tar -czvf $BACKUP /etc/nginx /usr/share/nginx/html
tar -tzf $BACKUP >> backups/backup_verification.log
