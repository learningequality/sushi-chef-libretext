FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN apt-get update && apt-get install -y build-essential gettext pkg-config python3-tk \
    python3 python3-dev python3-pip virtualenv \
    libxft-dev libwebp-dev libmagickwand-dev ghostscript \
    ffmpeg
RUN pip install --no-cache-dir -r requirements.txt

COPY . .