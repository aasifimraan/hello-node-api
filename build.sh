#!/bin/bash

#OUT_DIR= build_output
#mkdir -p "$OUT_DIR"

#cp app.js package.json README.md "$OUT_DIR"

#TS=$(date-Y%m%d+H%M%S)

#ARTIFACT=artifact_node$TS.zip

#zip -r "$ARTIFACT" "$OUT_DIR"

#echo ""$ARTIFACT" >> artifact_env

#ls -l ARTIFACT

echo "Installing dependencies"
npm install

echo "Running the app"
npm start
