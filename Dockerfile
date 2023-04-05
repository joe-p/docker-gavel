FROM python:3.9.16-slim-bullseye

RUN apt update && apt install -y libpq-dev build-essential

ADD https://github.com/anishathalye/gavel/archive/master.tar.gz /tmp/tarball.tar.gz
RUN tar -xzvf /tmp/tarball.tar.gz -C /
RUN mv /gavel* /gavel

WORKDIR /gavel

RUN pip install -r requirements.txt

RUN mv config.template.yaml config.yaml

CMD celery -A gavel:celery worker & python initialize.py &&  gunicorn -b :8080 -w 4 gavel:app
