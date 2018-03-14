FROM python:3.4.8-jessie
MAINTAINER Victor Ng <vng@mozilla.com>

EXPOSE 8000

RUN apt-get update -y
RUN apt-get install -y --no-install-recommends build-essential \
                                               python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
