FROM alpine:latest

MAINTAINER actanble@gmail.com
WORKDIR /usr/src/app

# 设置alpine的镜像地址为阿里云的地址
RUN wget -qO  /get-pip.py https://bootstrap.pypa.io/get-pip.py && \
    echo "https://mirrors.aliyun.com/alpine/v3.10/main/" > /etc/apk/repositories \
        && apk update \
        && apk add --no-cache bash \
            alibevent-dev libxml2-dev  libffi libxml2 libxslt libxslt-dev  \
            python3 gcc g++ python3-dev linux-headers libffi-dev openssl-dev \
        && python3 /get-pip.py \
        && cd .. \
        && rm -f /get-pip.py \
        && rm -rf /var/cache/apk/*

ADD ./Medusa.txt /requirements.txt
# TODO 生产环境中不要把镜像放到开源的镜像，而是推荐自己映射。
ADD . /usr/src/app

RUN pip install -r /requirements.txt

USER root

#ENTRYPOINT ['python' ]