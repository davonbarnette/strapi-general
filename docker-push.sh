#!/usr/bin/env bash
docker login &&
docker build -t general-strapi-api:latest . &&
docker tag general-strapi-api:latest davonbarnette/general-strapi-api:latest &&
docker push davonbarnette/general-strapi-api:latest
