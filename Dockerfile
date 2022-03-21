FROM ubuntu:20.04
LABEL maintainer="michaelpellegrini@protonmail.com"

WORKDIR /app

RUN apt-get update; apt-get install netcat -y;
COPY init.sh

ENTRYPOINT [ "./app/init.sh" ]
