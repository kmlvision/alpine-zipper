FROM alpine:latest

LABEL MAINTAINER="KML VISION, devops@kmlvision.com"

RUN apk --update add openssh zip unzip && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN echo -e "Hello!\nThe container is up and running.\n" > /wait.log

CMD ["tail", "-f", "/wait.log"]