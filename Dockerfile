FROM python:3.7-alpine



COPY requirments.txt .

RUN \
 apk add --no-cache postgresql-libs && \
 apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
 python3 -m pip install -r requirments.txt

COPY ./ ./app
WORKDIR ./app


CMD flask run -h 0.0.0.0
