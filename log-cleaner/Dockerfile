FROM alpine:3.22

RUN mkdir -p /var/log/app

COPY clean.sh /clean.sh

RUN chmod +x /clean.sh

RUN echo "*/5 * * * * /clean.sh >> /var/log/app/cleaner.log 2>&1" > /etc/crontabs/root

CMD ["crond", "-f", "-l", "2"]