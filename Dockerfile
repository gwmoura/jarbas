FROM python:3.5
COPY requirements.txt /requirements.txt
COPY requirements-dev.txt /requirements-dev.txt
RUN python -m pip install -U pip
RUN python -m pip install -r requirements.txt
COPY ./ /code
WORKDIR /code
RUN python manage.py collectstatic --noinput
