# Pull the base image
FROM python:3.12.0-slim-bullseye
# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set the work dir
WORKDIR /code
# Install dependencies
COPY requirements.txt requirements.txt
RUN pip Install -r requirements.txt
# Copy Project
COPY . .

