FROM python:3.10.0b1-slim-buster
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN pip install honeycomb-beeline
RUN pip install -U setuptools
COPY app.py /app
COPY templates /app
COPY helpers.py /app
#RUN mkdir /app/static
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
CMD [ "helpers.py" ]