# Dockerfile

FROM python:3.7.8-slim

RUN apt-get -y update && \
    apt-get install -y vim && \
    apt-get install -y telnet && \
    apt-get install -y wget

RUN python -m pip install --upgrade pip
    python -m pip install Flask

COPY . /app
WORKDIR /app

ENTRYPOINT ["python"]
CMD ["app.py"]

EXPOSE 5000