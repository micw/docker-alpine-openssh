FROM alpine:3.7

RUN apk add --update --no-cache openssh openssh-client

ENV SSH_PORT=22

CMD /usr/sbin/sshd -p ${SSH_PORT} -D
