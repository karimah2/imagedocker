FROM debian:stable-slim

RUN apt update 

EXPOSE 9000

VOLUME /data

CMD ["bash", "-c", "while true; do echo $(date) >> /data/file1.txt; sleep 2; done" ]
