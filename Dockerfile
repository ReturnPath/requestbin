FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python python-dev python-distribute python-pip

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install -r requirements.txt

COPY . /usr/src/app/

EXPOSE 4000

CMD ["script/run.sh"]
