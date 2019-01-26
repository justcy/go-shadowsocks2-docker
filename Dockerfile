FROM alpine
MAINTAINER justxcy@gmail.com

ADD https://github.com/shadowsocks/go-shadowsocks2/releases/download/v0.0.11/shadowsocks2-linux.gz /shadowsocks2.gz

RUN gunzip shadowsocks2.gz 
RUN chmod +x /shadowsocks2
COPY endpoint-start.sh /endpoint-start.sh
ENV SS_CONFIG ss://AEAD_CHACHA20_POLY1305:your-password@:8490
EXPOSE 8490
CMD ["sh","endpoint-start.sh"]
