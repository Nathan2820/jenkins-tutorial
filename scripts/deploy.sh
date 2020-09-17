#! /bin/bash
cd chaperootodo_client
sudo docker-compose pull && sudo -E DBPASSWORD={DB_PASSWORD} && sudo docker-compose up -d
