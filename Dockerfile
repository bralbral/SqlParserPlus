FROM python:3.9.2-slim-buster

WORKDIR /usr/src/app

# req for tkinter
RUN apt-get update && \
    apt-get install python3-tk -y && \
    rm -r /var/lib/apt/lists/*

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python3", "./SqlParserPlus.py"]