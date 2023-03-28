FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"

RUN mkdir -p /opt/alist/data/ && chmod -R 777 /opt/alist/data
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 443

ENTRYPOINT ["sh", "/entrypoint.sh"]
