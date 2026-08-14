FROM alpine:3.22

RUN mkdir -p /var/log/app

COPY generate.sh /generate.sh

RUN chmod +x /generate.sh

CMD ["/generate.sh"]