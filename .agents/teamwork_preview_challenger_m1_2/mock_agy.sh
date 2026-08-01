#!/bin/bash
echo "MOCK AGY STARTED"
while read -r line; do
  echo "MOCK AGY RECEIVED: $line"
  if [[ "$line" == *"/exit"* ]]; then
    echo "MOCK AGY EXITING"
    exit 0
  fi
done
