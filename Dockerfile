FROM python:3.10.0b1-slim-buster
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install honeycomb-beeline
RUN pip3 install -U setuptools
ENV HONEYCOMB_WRITEKEY='1252c1ce92b00ad574131fa6e873366d'
ENV FLASK_APP='app.py'
COPY app.py app.py
COPY templates templates
COPY helpers.py helpers.py
CMD ["tree /"]
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]