FROM python:3.7-alpine

WORKDIR /usr/src/app

ADD ./Medusa.txt /requirements.txt
RUN pip install --upgrade pip --index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install -r /requirements.txt

USER root

# TODO : 注意如果是生产环境中就不要将代码放置在公用容器里面而是进行挂载使用。
ADD . /usr/src/app

ENTRYPOINT ['python MedusaScan.py']