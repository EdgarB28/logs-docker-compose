FROM alpine:3.22

RUN mkdir -p /var/log/app

RUN apk add --no-cache gzip

COPY compress.sh /compress.sh

RUN chmod +x /compress.sh

RUN echo "*/2 * * * * /compress.sh >> /var/log/app/compressor.log 2>&1" > /etc/crontabs/root

CMD ["crond", "-f", "-l", "2"]