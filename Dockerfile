FROM caddy:2.7.4-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/desec \
    --with github.com/ueffel/caddy-brotli

FROM caddy:2.7.4

COPY --from=builder /usr/bin/caddy /usr/bin/caddy