#!/bin/bash

mkdir /run/php

exec /usr/bin/supervisord -n -c /etc/supervisord.conf

