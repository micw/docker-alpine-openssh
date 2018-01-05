FROM alpine:3.7

RUN apk add --update --no-cache openssh openssh-client bash

ADD https://github.com/jpetazzo/pipework/blob/master/pipework /pipework
ADD run.sh /run.sh

ENV SSH_PORT=22

CMD /run.sh
