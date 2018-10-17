#!/bin/bash

docker stop website
docker rm website
docker run -d \
-v /srv/website/config:/etc/nginx/sites-enabled \
-v /srv/website/www:/var/www \
-p 8080:80 \
--name=nwebsite \
exception/php

