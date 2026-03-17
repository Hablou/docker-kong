FROM kong:3.9

USER root

RUN apt-get update \
 && apt-get install -y git unzip luarocks \
 && rm -rf /var/lib/apt/lists/*

RUN luarocks install kong-openid-connect

USER kong
