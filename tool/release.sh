#!/bin/bash

CWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
PARENT="$(cd $CWD/.. >/dev/null 2>&1 && pwd)"

set -e

if [ -z "$1" ]; then
    echo "$TAG: No version was passed in!"
    exit 1
fi

cd $PARENT

echo "Updating pubspec with new version $1"
node ./tools/update_version --ver $1
retVal=$?
if [ ! $retVal -eq 0 ]; then
  echo "Failed to update the version!"
  exit 1
fi

echo "Performing a dry-run of publish for $1"
flutter pub pub publish --dry-run
retVal=$?
if [ ! $retVal -eq 0 ]; then
  echo "Dry-run failed!"
  exit 1
fi

echo "Publishing version $1 to pub.dev"
flutter pub publish
retVal=$?
if [ ! $retVal -eq 0 ]; then
  echo "Failed to publish to pub.dev!"
  exit 1
fi

echo "Finished"
