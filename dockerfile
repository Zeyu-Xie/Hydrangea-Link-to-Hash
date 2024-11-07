FROM ubuntu:24.04

WORKDIR /app

COPY . /app

RUN apt update && apt install -y curl

RUN chmod +x /app/main.sh

CMD ["sh", "/app/main.sh"]