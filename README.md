# Docker PHP Container

Runs a PHP web application.

## Prerequisites

Linux system with the Docker daemon installed.

Any database server your application might need.

## Installation

How to install this site:

1. Create /srv/website/config and move nginx.site there
2. Create /srv/website/www and copy the website PHP code there
3. If you need a database server, it may be reached at 172.17.0.1
4. Build with the ./build.sh script
5. Run with the ./run.sh script

You may replace "website" with your website name, where ever it occurs.

