#!/bin/zsh

if [ -z "${CLOUDFLARE_ZONE}" ]; then
    echo "Cloudflare zone not found"
    exit 1
fi

if [ -z "${CLOUDFLARE_API_TOKEN}" ]; then
    echo "Cloudflare auth key not found"
    exit 2
fi

response=$(curl -X POST "https://api.cloudflare.com/client/v4/zones/${CLOUDFLARE_ZONE}/purge_cache" -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}" -H "Content-Type: application/json" --data '{"purge_everything":true}')

echo "Response data: $response"

if [[ $response =~ '"success": true' ]]; then
    echo "Cloudflare cache cleared successfully"
    exit 0
else
    echo "Cloudflare API call failed"
    exit 3
fi