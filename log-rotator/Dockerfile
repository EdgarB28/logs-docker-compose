FROM alpine:3.22

RUN mkdir -p /var/log/app

RUN apk add --no-cache coreutils

COPY rotate.sh /rotate.sh

RUN chmod +x /rotate.sh

RUN echo "* * * * * /rotate.sh >> /var/log/app/rotator.log 2>&1" > /etc/crontabs/root

CMD ["crond", "-f", "-l", "2"]