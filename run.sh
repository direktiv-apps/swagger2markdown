#!/bin/sh

docker build -t swagger2markdown . && docker run -p 8080:8080 swagger2markdown