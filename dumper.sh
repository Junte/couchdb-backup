#! /bin/bash

set -o errexit

cd ${DATA_FOLDER}

tar -zcf ${BACKUPS_FOLDER}/backup.tar.gz . 

cd ${BACKUPS_FOLDER}

_BACKUP_FILENAME=backup_$(date '+%Y-%m-%d_%H:%M').tar.gz

mv backup.tar.gz ${_BACKUP_FILENAME}
ln -sf ${_BACKUP_FILENAME} latest.tar.gz