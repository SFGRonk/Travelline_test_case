#!/bin/bash

response_code=$(curl -sL -o /dev/null -w '%{response_code}' ya.ru)
echo "RESPONSE CODE: $response_code"

if [ "$response_code" -ne "200" ]; then
  echo "Server is unavailable"
  exit 1
fi

echo "Server available and returns 200 status code"
exit 0