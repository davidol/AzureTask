FROM python:3.7-alpine

RUN mkdir -p /app
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY . /app

CMD    flask run --host 0.0.0.0 --port 8001
