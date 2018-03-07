#!/bin/bash

# Cleanup
rm -rf node_modules

# Copy C libs
mkdir -p lib
cp -r /usr/local/lib/* lib

# Install npm modules
npm install --production
