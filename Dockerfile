FROM resin/rpi-raspbian:latest  

LABEL maintainer "lunchtm"


ENTRYPOINT []

# python-dev python-pip nodejs npm youtube-dl lame mpg321
RUN apt-get update && \  
    apt-get -qy install curl ca-certificates

ADD https://raw.githubusercontent.com/lanceseidman/PiCAST/master/setup.sh /home/picast/setup.sh
# RUN curl -o /home/picast/setup.sh https://raw.githubusercontent.com/lanceseidman/PiCAST/master/setup.sh
#COPY setup.sh /home/picast/setup.sh
RUN chmod +x /home/picast/setup.sh
RUN ./home/picast/setup.sh

EXPOSE 3000

CMD ["bash"]  
