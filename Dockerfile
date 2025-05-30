FROM oraclelinux:7-slim

RUN yum update -y && \
    yum install -y gcc-c++ make sudo zip

# Create ORM package

COPY terraform /devops-tf

RUN mkdir /package
RUN cd /devops-tf && zip -r /package/devops-tf-testimonials-stack.zip .

VOLUME ["/transfer/"]
