FROM python:3.8.5
LABEL author='lotrus@yandex.ru' version=1
WORKDIR /code
COPY . .
RUN pip3 install -r /code/requirements.txt
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000 