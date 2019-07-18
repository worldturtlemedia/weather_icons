#!/bin/bash

CWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
PARENT="$(cd $CWD/.. >/dev/null 2>&1 && pwd)"

set -e

cd $PARENT

FILE="do_release"
if test -f "$FILE"; then
  rm $FILE

  echo "Publishing version new to pub.dev"

  flutter pub pub publish --force
  retVal=$?
  if [ ! $retVal -eq 0 ]; then
    echo "Failed to publish to pub.dev!"
    exit 1
  fi
else
  echo "No need to release"
  exit 0
fi