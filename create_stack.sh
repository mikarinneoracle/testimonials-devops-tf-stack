#!/bin/bash

mkdir -p deploy/devops-tf/
cp -r terraform ./deploy/devops-tf/
cp Dockerfile ./deploy/devops-tf/Dockerfile

rm -f devops-tf-testimonials-stack.zip
docker build -t devops-tf -f deploy/devops-tf/Dockerfile .
docker run -v $PWD:/transfer --rm --entrypoint cp devops-tf:latest /package/devops-tf-testimonials-stack.zip /transfer/devops-tf-testimonials-stack.zip
