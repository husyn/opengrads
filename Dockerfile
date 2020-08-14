FROM centos:centos8 AS baseimage
LABEL maintainer="Hussain Mansoor"

# Download grads binary from https://sourceforge.net/projects/opengrads/files/grads2/2.2.1.oga.1/Linux%20%2864%20Bits%29/
RUN yum update -y
RUN yum install -y wget perl

RUN wget -O grads.tar.gz "https://sourceforge.net/projects/opengrads/files/grads2/2.2.1.oga.1/Linux%20%2864%20Bits%29/opengrads-2.2.1.oga.1-bundle-x86_64-pc-linux-gnu-glibc_2.17.tar.gz/download"
RUN tar -xzf grads.tar.gz && rm grads.tar.gz
    
ENV PATH="/opengrads-2.2.1.oga.1/Contents:${PATH}"

RUN grads --version
