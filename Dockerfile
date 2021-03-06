FROM alpine:3.9

RUN apk add --no-cache py-pip python mysql-client rdiff-backup lftp tar bzip2 bash vim php-cli php-pdo_mysql php-mbstring php-sqlite3 php-pdo_sqlite openssh-client
RUN pip install pexpect
ENTRYPOINT ["crond", "-f"]