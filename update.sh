#!/bin/bash

git fetch origin main

if git diff --quiet origin/main..main; then
    echo "No changes detected. Skipping docker-compose up."
else
    echo "Changes detected. Pulling new changes and running docker-compose up."
    git pull origin main
    docker-compose up -d --build
fi
