#! /bin/bash

set -o errexit

cd ${DATA_FOLDER}

tar -zcf --warning=no-file-changed   backup.tar.gz . 

_BACKUP_FILENAME=backup_$(date '+%Y-%m-%d_%H:%M').tar.gz
mv backup.tar.gz ${BACKUPS_FOLDER}/${_BACKUP_FILENAME}