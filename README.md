# Bulk downloader for reddit v2

Dockerized version of BDFR 2.x with batteries included:

- No need to install python & pip packages
- No need to install ffmpeg and other dependencies

### Available on Docker hub

[![dockeri.co](https://dockeri.co/image/lucarillosi/bulk-downloader-for-reddit)](https://hub.docker.com/r/lucarillosi/bulk-downloader-for-reddit)

### Usage:

```sh
docker run --rm -it \
    -v $(pwd)/downloads:/downloads \
    lucarillosi/bulk-downloader-for-reddit \
    --help
```
