FROM python:3.10.0b1-slim-buster
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN pip install honeycomb-beeline
RUN pip install -U setuptools
ENV HONEYCOMB_WRITEKEY='1252c1ce92b00ad574131fa6e873366d'
ENV FLASK_APP='/app/app.py'
COPY app.py /app
COPY templates /app
COPY helpers.py /app
#RUN mkdir /app/static
ENTRYPOINT [ "flask" ]
CMD [ "run" ]