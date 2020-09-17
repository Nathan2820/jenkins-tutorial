#! /bin/bash
cd chaperootodo_client

sudo chown jenkins /var/run/docker.sock
sudo chmod 666 /var/run/docker.sock

docker-compose up -d
