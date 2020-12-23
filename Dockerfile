FROM alpine:3.9

RUN apk add --no-cache py-pip python mysql-client rdiff-backup lftp tar bzip2 bash vim
RUN pip install pexpect
ENTRYPOINT ["crond", "-f"]