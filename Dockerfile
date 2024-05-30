FROM caddy:2.8.0-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/desec \
    --with github.com/greenpau/caddy-security

FROM caddy:2.8.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
