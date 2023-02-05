FROM alpine:latest
RUN apk add --no-cache bash
COPY --chmod=755 goo /bin/goo
EXPOSE 8080
CMD ["sh", "-c", "goo server --socks5 --key $ka --auth $ka"]