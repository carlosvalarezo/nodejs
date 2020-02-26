#!/bin/sh

GIT_DIR=$(git rev-parse --git-dir)

echo "installing hooks..."
ln -s ../../scripts/pre-push.sh $GIT_DIR/hooks/pre-push
ln -s ../../scripts/hooks-failed $GIT_DIR/hooks/hooks-failed
ln -s ../../scripts/hooks-started $GIT_DIR/hooks/hooks-started
ln -s ../../scripts/hooks-finished $GIT_DIR/hooks/hooks-finished
echo "hooks installed"
