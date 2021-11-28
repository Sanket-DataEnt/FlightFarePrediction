# FROM alpine:3.9
FROM continuumio/anaconda3
COPY . /app
EXPOSE 5000
WORKDIR /app
RUN \
    pip3 install wheel setuptools \
    && pip3 install -r requirements.txt \
    && rm -rf /var/cache/apk/*
CMD ["python", "app.py", "--host", "0.0.0.0", "--port", "5000"]