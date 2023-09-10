# Pull base image
FROM python:3.10

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /d4prof

# Indtall dependencies
COPY Pipfile Pipfile.lock /d4prof/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /d4prof/
