#!/usr/bin/env bash

# Build image
#change tag for new container registery, gcr.io/bob
docker build --tag=mcnuggets23/cloud-project-2 . 

# Run flask app
docker run -p 8080:8080 mcnuggets23/cloud-project-2
