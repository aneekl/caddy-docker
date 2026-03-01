FROM caddy:2.11.1-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/desec 

FROM caddy:2.11.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
