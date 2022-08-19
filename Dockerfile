# pull official base image
FROM python:3.10.6-bullseye

# set work directory
WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# RUN apt update \
#     && apt add postgresql-dev gcc python3-dev musl-dev

# install dependencies
RUN pip install --upgrade pip

COPY ./req.txt .

RUN pip install -r req.txt

# copy project
COPY . .