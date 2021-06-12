# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
ENV HONEYCOMB_WRITEKEY='1252c1ce92b00ad574131fa6e873366d'
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]