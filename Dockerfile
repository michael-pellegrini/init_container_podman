FROM ubuntu:20.04
LABEL maintainer="michaelpellegrini@protonmail.com"

WORKDIR /app

RUN apt-get update; apt-get upgrade -y; apt-get install netcat -y; apt-get clean -y; apt-get autoremove -y;



VOLUME [ "/app/config" ]
VOLUME [ "/etc/ssl" ]
VOLUME [ "/app/config/logs" ]

ENTRYPOINT [ "dotnet", "/app/DnsServerApp.dll" ]
