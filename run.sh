#!/usr/bin/env bash
docker login &&
docker pull davonbarnette/general-strapi-api:latest &&
docker rm -f general-strapi-api
docker run --env-file general-strapi-api.env -p 1337:1337 davonbarnette/general-strapi-api
