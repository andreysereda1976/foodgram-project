FROM python:3.8.5

LABEL author="Andrey Sereda"

RUN mkdir /code

COPY requirements.txt /code

RUN pip3 install -r /code/requirements.txt

COPY . /code

WORKDIR /code
CMD gunicorn foodgram.wsgi:application --bind 0.0.0.0:8000

ENV DJANGO_SETTINGS_MODULE=foodgram.settings