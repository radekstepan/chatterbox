#!/bin/bash

set -e

IMAGE_NAME=gradio-tts-app
CONTAINER_NAME=gradio-tts-container

# Step 1: Build the image
echo "Building Docker image: $IMAGE_NAME"
docker build -t $IMAGE_NAME .

# Step 2: Run the container
echo "Running Docker container: $CONTAINER_NAME"
docker run --rm -it \
  --gpus all \
  -p 7860:7860 \
  --name $CONTAINER_NAME \
  $IMAGE_NAME
