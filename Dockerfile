# Docker image for springboot file run
# VERSION 0.0.1
# Author: hjl
# 基础镜像使用java
FROM openjdk:8u212-jre-alpine
# 作者
MAINTAINER hjl<junlunhuang@tencent.com>


RUN mkdir -p /data

ADD ./knife4j.tar.gz /data

RUN apk add --no-cache bash curl


WORKDIR /data/knife4j/bin
ENTRYPOINT ["/bin/bash", "/data/knife4j/bin/startup.sh"]


EXPOSE 8006