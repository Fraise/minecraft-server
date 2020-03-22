FROM openjdk:8-alpine

WORKDIR /root

RUN wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
COPY run.sh .
RUN chmod +x run.sh

ENTRYPOINT [ "/root/run.sh" ]
