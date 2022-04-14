#!/bin/bash
echo "Setting up Docker lab environment..."
docker pull alpine
docker pull python:3.9-slim
docker run --restart=always -d --name redis -p 6379:6379 -v redis:/data redis:6-alpine # mount redis on /data folder
echo "Setup complete"