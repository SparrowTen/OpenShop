FROM python:3.10

WORKDIR /app

ADD . /app

RUN pip install -r ./env/requirements.txt

CMD python ./framework/manage.py runserver 0.0.0.0:80
