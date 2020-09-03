#!/bin/bash

export PATH="/usr/local/bin:$PATH"

function showHelp() {
    echo "You need to provide source and target currencies as arguments. Here are the options:"
    echo
    echo "-s | --source    Source currency"
    echo "-t | --target    Target currency"
    echo "-h | --help      Show this help"
    echo
    echo "Example usage:"
    echo "./exchange-rates.sh --source USD --target TRY"
}

function run() {
  URL="https://akifs-exchange-api.herokuapp.com/rates?source=$SOURCE&target=$TARGET"
  RESPONSE=$(curl -s -X GET $URL | jq -r '"\(.source),\(.target),\(.rate)"')
  echo $RESPONSE | awk -F ',' '{printf "💵 %s-%s: %0.3f\n", $1, $2, $3}'
}

while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -s|--source)
    SOURCE="$2"
    shift # past argument
    shift # past value
    ;;
    -t|--target)
    TARGET="$2"
    shift # past argument
    shift # past value
    ;;
    -h|--help)
    showHelp
    exit
    ;;
esac
done

if test -z "$SOURCE" -o -z "$TARGET"
then
    echo "Invalid or missing parameters!"
    showHelp
    exit 1
fi

run
