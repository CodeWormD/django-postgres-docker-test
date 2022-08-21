# pull official base image
FROM python:3.10.6-bullseye

# set work directory
WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update\
    && apt-get install netcat -y
RUN apt-get upgrade -y && apt-get install postgresql gcc python3-dev musl-dev -y

RUN pip install --upgrade pip

COPY ./req.txt .

RUN pip install -r req.txt

COPY ./entrypoint.sh .

# copy project
COPY . .

ENTRYPOINT ["/app/entrypoint.sh"]