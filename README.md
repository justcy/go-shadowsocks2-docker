# go-shadowsocks2-docker
a docker for go-shadowsocks2 https://github.com/cloverzrg/shadowsocks-go-docker/blob/master/Dockerfile

# Example

## server
docker run --restart=always -dt -p 8488:8488 justcy/shadowsocks2 -s "ss://AEAD_CHACHA20_POLY1305:your-password@:8488"

## client
docker run --restart=always -dt -p 1080:8488 justcy/shadowsocks2:client -c 'ss://AEAD_CHACHA20_POLY1305:your-password@[server_address]:8488' \
    -verbose -socks :1080 -u -udptun :8053=8.8.8.8:53,:8054=8.8.4.4:53 \
                             -tcptun :8053=8.8.8.8:53,:8054=8.8.4.4:53
注意：镜像默认统一对外暴露 8488 端口，可使用 环境变量  PORT 更改

其他参数 

'''
Usage of ./sserver:
  -c string
        client connect address or url
  -cipher string
        available ciphers: AEAD_AES_128_GCM AEAD_AES_192_GCM AEAD_AES_256_GCM AEAD_CHACHA20_POLY1305 AES-128-CFB AES-128-CTR AES-192-CFB AES-192-CTR AES-256-CFB AES-256-CTR CHACHA20-IETF XCHACHA20 (default "AEAD_CHACHA20_POLY1305")
  -key string
        base64url-encoded key (derive from password if empty)
  -keygen int
        generate a base64url-encoded random key of given length in byte
  -password string
        password
  -redir string
        (client-only) redirect TCP from this address
  -redir6 string
        (client-only) redirect TCP IPv6 from this address
  -s string
        server listen address or url
  -socks string
        (client-only) SOCKS listen address
  -tcptun string
        (client-only) TCP tunnel (laddr1=raddr1,laddr2=raddr2,...)
  -u    (client-only) Enable UDP support for SOCKS
  -udptimeout duration
        UDP tunnel timeout (default 5m0s)
  -udptun string
        (client-only) UDP tunnel (laddr1=raddr1,laddr2=raddr2,...)
  -verbose
        verbose mode
'''
