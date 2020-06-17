FROM python:3.7

RUN mkdir /app
WORKDIR /app

ADD . /app/

ENV PYTHONBUFFERED 1
ENV LANG C.UTF-8
ENV DEBIAN_FRONTENN=noninteractive

ENV PORT 9000

RUN apt-get update && apt-get install -y --no-install-recommends\
    tzdata\
    python3-pip python3-setuptools python3-dev python3-venv\
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install -r requirements.txt

EXPOSE 9000

CMD uwsgi --http :${PORT} --wsgi-file artisen/wsgi.py
