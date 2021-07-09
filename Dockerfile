FROM python:3.9.4-buster AS base

WORKDIR /bdfr

RUN apt update && apt install -y ffmpeg
RUN wget -O release.tar.gz https://github.com/aliparlakci/bulk-downloader-for-reddit/archive/refs/tags/v2.0.0.tar.gz
RUN tar -xf release.tar.gz -C . --strip-components=1
RUN rm release.tar.gz
RUN pip install -r requirements.txt
RUN python3 -m pip install bdfr
ENTRYPOINT [ "python3", "-m", "bdfr" ]
