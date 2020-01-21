
FROM alpine:3.11.3 AS BUILD-ENV
LABEL maintainer "Anucha Nualsi <ana.cpe9@gmail.com>"

ADD qemu-arm-static /usr/bin
RUN chmod +x /usr/bin/qemu-arm-static

FROM arm32v7/alpine:3.11.3
LABEL maintainer="Anucha Nualsi <ana.cpe9@gmail.com>"

COPY --from=BUILD-ENV /usr/bin/qemu-arm-static /usr/bin
