#!/bin/bash

# docker system prune
docker image rm marcondol/evidently-local:latest
docker build -t marcondol/evidently-local:latest .