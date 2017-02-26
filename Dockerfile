FROM python:2.7.13

RUN cd /usr/local/opt/flaskr && pip install --editable .

COPY flaskr /usr/local/opt/flaskr

ENV FLASK_APP=flaskr \
    FLASK_DEBUG=true

CMD ["flask", "run", "--host=0.0.0.0"]
