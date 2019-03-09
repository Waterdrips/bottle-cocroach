FROM ubuntu:18.10
ENV LC_ALL=C.UTF-8

RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-pip nginx
RUN pip3 install uwsgi


COPY ./ ./app
WORKDIR ./app
RUN pip3 install -r requirments.txt


CMD flask run -h 0.0.0.0