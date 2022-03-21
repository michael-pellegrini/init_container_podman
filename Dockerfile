FROM ubuntu:20.04
LABEL maintainer="michaelpellegrini@protonmail.com"

WORKDIR /app

COPY ./init.sh /app
RUN apt-get update; apt-get install netcat -y;
RUN chmod +x /app/init.sh

ENTRYPOINT [ "/app/init.sh" ]
