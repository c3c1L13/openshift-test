#FROM python:3
FROM python:latest

MAINTAINER Tully Rankin

COPY . /src
COPY pkg/ /pkg

RUN pip install pkg/Werkzeug-0.14.1.tar.gz
RUN pip install pkg/MarkupSafe-1.0.tar.gz
RUN pip install pkg/Jinja2-2.10.tar.gz
RUN pip install pkg/itsdangerous-0.24.tar.gz
RUN pip install pkg/click-6.7.tar.gz
RUN pip install pkg/Flask-1.0.2.tar.gz
RUN pip install pkg/redis-2.10.6.tar.gz

WORKDIR /
RUN rm -rf pkg/
WORKDIR /src

CMD ["python", "manage.py", "serve"]

