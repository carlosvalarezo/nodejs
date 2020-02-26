#!/bin/sh

echo "running pre-commit hook"
./scripts/run-scripts.sh

if [ $? -ne 0 ]; then
 echo "Tests must pass before commit!"
#  exit 1 delete the line below and uncomment this to exit with 1
 exit 0
fi
