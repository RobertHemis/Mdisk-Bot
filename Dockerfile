FROM python:3.10-slim-buster

WORKDIR . .

RUN apt update && apt upgrade -y

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
