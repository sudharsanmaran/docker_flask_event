FROM python:3.8.10
ENV PYTHONUNBUFFERED 1
#working dir in docker container
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app

CMD python3 app.py