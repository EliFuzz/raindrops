#!/usr/bin/env bash

FROM="EUR"
TO="USD"

TOKEN="dad99d7d8e52c2c8aaf9fda788d8acdc"
URL="https://transferwise.com/api/v1/payment/calculate?amount=1&amountCurrency=source&hasDiscount=false&isFixedRate=false&isGuaranteedFixedTarget=false&sourceCurrency=${FROM}&targetCurrency=${TO}"

RESPONSE=$(curl -s -H "X-Authorization-key: ${TOKEN}" -H "Accept: application/json" ${URL})
RESULT=$(echo ${RESPONSE} | grep -o '"transferwiseRate":[0-9]*.[0-9]*' | cut -c20-)

echo "${TO}: ${RESULT:0:4}"
