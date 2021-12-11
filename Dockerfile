FROM alpine:latest

LABEL MAINTAINER="KML VISION, devops@kmlvision.com"

RUN apk --update add openssh zip unzip && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN touch /tmp/wait

CMD ["tail", "-f", "/tmp/wait"]