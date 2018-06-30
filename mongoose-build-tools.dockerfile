FROM ubuntu
RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:mongoose-os/mos -y
RUN apt-get install mos -y
CMD mos --http-addr 0.0.0.0:1992
ENV HOME /root
WORKDIR /root