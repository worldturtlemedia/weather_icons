#!/bin/bash

CWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
PARENT="$(cd $CWD/.. >/dev/null 2>&1 && pwd)"

CREDFILE=$2

echo "Initializing script..."

function showUsage() {
  echo -e "Usage:\n\t./secrets.sh <encrypt|decrypt> [opts]"
  echo -e "\nExamples"
  echo -e "\nEncrypt:\n\t./secrets encrypt /path/to/credentials.json"
  echo -e "\nDecrypt: \n\t./secrets decrypt /path/to/save [password]"
  echo -e "\tThe [password] parameter is required for CI environments, but if it is\n\tempty the user will be prompted to enter the password."
}

# Args:
# $1 - e|d - Encrypt or decrypt
# $2 - password
# $3 - in
# $4 - out
function crypto() {
  openssl aes-256-cbc "-$1" -k "$2" -in "$3" -out "$4" -md sha256
  retVal=$?
  if [ $retVal -ne 0 ]; then
    # rm $2
    echo "Unable to process $3"
    echo "Exiting..."
    exit 1
  fi
}

function decrypt() {
  echo "Running in decrypt mode."

  password=$3
  if [ -z "$password" ]; then
    if [ "$CI" = true ]; then
      echo "Detected a CI environment, but no password was supplied!"
      showUsage
      exit 1
    else
      read -sp "Enter the password: " password
      if [ -z "$password" ]; then
        echo "No password was supplied!"
        exit 1
      fi
    fi
  fi

  echo -e "\nDecrypting credentials.json-encrypted"
  crypto "d" "$password" "$CWD/credentials.json-encrypted" "$CREDFILE/credentials.json"
}

function encrypt() {
  echo "Running in encrypt mode."

  if [[ -z "$CREDFILE" ]]; then
    echo "You need to supply a credentials.json file!"
    exit 1
  fi

  read -sp "Enter the password: " password
  echo
  read -sp "Confirm password: " confirm

  if [ "$password" != "$confirm" ]; then
    echo -ne "\nThe entered passwords do not match!"
    exit 1
  fi

  echo -e "\nEncrypting credentials.json..."
  crypto "e" "$password" "$CREDFILE" "$CWD/credentials.json-encrypted"
}

if [[ "$1" == "encrypt" ]]; then
  encrypt "$@"
elif [[ "$1" == "decrypt" ]]; then
  decrypt "$@"
else
  showUsage
  exit 1
fi

echo "Have a nice day!"