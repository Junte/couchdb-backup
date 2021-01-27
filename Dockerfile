FROM debian:10.7-slim

ENV BACKUPS_FOLDER="/var/backups" \
    DATA_FOLDER="/var/data"

WORKDIR /app

COPY dumper.sh .

CMD [ "./dumper.sh" ]