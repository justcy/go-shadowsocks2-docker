FROM alpine
MAINTAINER justxcy@gmail.com

ADD https://github.com/shadowsocks/go-shadowsocks2/releases/download/v0.0.11/shadowsocks2-linux.gz /sserver
RUN tar -xzvf /sserver 
# ADD shadowsocks-server /shadowsocks-server
RUN chmod +x /shadowsocks-server
COPY endpoint-start.sh /endpoint-start.sh
ENV PASSWORD docker
ENV PORT 8374
ENV METHOD aes-128-cfb
# aes-128-cfb, aes-192-cfb, aes-256-cfb, bf-cfb, cast5-cfb,
# des-cfb, rc4-md5, chacha20, salsa20, rc4, table
EXPOSE 8373
CMD ["sh","endpoint-start.sh"]