FROM alpine:3.11

RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip

WORKDIR /medicalgo

COPY . /medicalgo

RUN pip3 install -r requirements.txt

CMD ["python3", "src/app.py"]