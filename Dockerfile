FROM alpine
MAINTAINER justxcy@gmail.com

ADD https://github.com/shadowsocks/go-shadowsocks2/releases/download/v0.0.11/shadowsocks2-linux.gz /shadowsocks2.gz
RUN gunzip shadowsocks2.gz 
RUN chmod +x /shadowsocks2
# ADD endpoint-start.sh /endpoint-start.sh
# RUN chmod +x /endpoint-start.sh
ENV PORT 8488
EXPOSE $PORT
ENTRYPOINT ["/shadowsocks2"]
