#!/bin/bash

set -eou pipefail

echo "Purging '${CHANNEL}/${PRODUCT_KEY}/latest' Surrogate Key group from Fastly"
curl -X POST -H "Fastly-Key: $FASTLY_API_TOKEN" https://api.fastly.com/service/1ga2Kt6KclvVvCeUYJ3MRp/purge/${CHANNEL}/${PRODUCT_KEY}/latest
