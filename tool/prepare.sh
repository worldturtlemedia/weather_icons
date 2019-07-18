#!/bin/bash

# Usage ./prepare.sh <version> [decryption password]
# Decryption password can also be set with the env var: PUB_SECRET_PASSWORD

CWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
PARENT="$(cd $CWD/.. >/dev/null 2>&1 && pwd)"

DECRYPT_PASSWORD=$2
if [ -z "$DECRYPT_PASSWORD" ]; then
  DECRYPT_PASSWORD=$PUB_SECRET_PASSWORD

  if [ -z "$DECRYPT_PASSWORD" ]; then
    echo "No decryption password was supplied!"
    echo "Either pass it in to this script, or set PUB_SECRET_PASSWORD in your ENV"
    exit 1
  fi
fi

set -e

if [ -z "$1" ]; then
    echo "$TAG: No version was passed in!"
    exit 1
fi

cd $PARENT

echo "Decrypting secrets... to $HOME/.pub-cache"
./secret/secrets.sh decrypt "$HOME/.pub-cache" $DECRYPT_PASSWORD
retVal=$?
if [ ! $retVal -eq 0 ]; then
  echo "Failed to decrypt the secrets!"
  exit 1
fi

echo "Updating pubspec with new version $1"
node ./tool/update_version --ver $1
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

touch do_release

echo "Finished Prepare"
