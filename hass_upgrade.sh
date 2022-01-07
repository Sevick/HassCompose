#!/bin/bash

docker stop homeassistant
docker rm homeassistant
docker pull homeassistant/home-assistant
docker run --init -d --name homeassistant --restart=unless-stopped -v /etc/localtime:/etc/localtime:ro -v /home/homeassistant/hass:/config --network=host --log-driver local --log-opt max-size=30m --log-opt max-file=3 homeassistant/raspberrypi4-homeassistant:stable
