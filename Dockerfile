FROM kong:3.9

USER root

RUN apk add --no-cache git unzip luarocks \
 && luarocks install kong-openid-connect

USER kong
