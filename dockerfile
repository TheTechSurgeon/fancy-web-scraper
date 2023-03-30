from python:3-alpine

run apk update && apk add --no-cache gcc musl-dev

COPY requirements.txt /app/requirements.text
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "scraper.py"]