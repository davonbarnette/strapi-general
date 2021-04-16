#!/usr/bin/env bash
aws ecr --profile personal-ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 060628141093.dkr.ecr.us-east-1.amazonaws.com &&
docker build -t hitagi/general-strapi-api . &&
docker tag hitagi/general-strapi-api:latest 060628141093.dkr.ecr.us-east-1.amazonaws.com/hitagi/general-strapi-api:latest &&
docker push 060628141093.dkr.ecr.us-east-1.amazonaws.com/hitagi/general-strapi-api:latest
