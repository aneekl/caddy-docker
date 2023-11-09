FROM caddy:2.7.5-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/desec 

FROM caddy:2.7.5

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
