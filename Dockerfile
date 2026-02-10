FROM python:3.12-slim

WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

ENV DAGSHUB_TOKEN='ff80413f6fcd12f9d66454fe0f1e8887b2d5ff15'
ENV MLFLOW_TRACKING_URI='https://dagshub.com/Hari777-007/ns_project.mlflow'
ENV MLFLOW_TRACKING_USERNAME='Hari777-007'
ENV MLFLOW_TRACKING_PASSWORD='ff80413f6fcd12f9d66454fe0f1e8887b2d5ff15'

EXPOSE 8080

RUN apt-get update && pip install -r requirements.txt
CMD ["python3", "app.py"]