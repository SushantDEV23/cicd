FROM python:3
ENV PYTHONUNBUFFERED=1
RUN mkdir /code
WORKDIR /code
COPY . /copy/
RUN pip install -r requirements.txt
