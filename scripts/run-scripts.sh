#!/bin/sh

GIT_DIR=$(git rev-parse --git-dir)

cat $GIT_DIR/hooks/hooks-started
echo 'building the image localy!'
docker build .
if [ $? -ne 0 ]; then
 echo "there were errors on building the image!"
 cat $GIT_DIR/hooks/hooks-failed
 exit 1
fi
echo 'building the image sucessfuly!'
echo 'testing the image localy!'
docker test .
if [ $? -ne 0 ]; then
 echo "there were errors on testing the image!"
 cat $GIT_DIR/hooks/hooks-failed
 exit 1
fi
echo 'testing the image sucessfuly!'
cat $GIT_DIR/hooks/hooks-finished
exit 0
