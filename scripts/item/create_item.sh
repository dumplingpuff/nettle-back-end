curl --include --request POST http://localhost:3000/items \
  --header "Authorization: Token token=BAhJIiVmODQyNzZkN2QzNDM4ZDNlYWZiMDNiMTRjZjA2ZTQyYQY6BkVG--ac309c63c8773d2041b2056eb2d3691768720ba7" \
  --header "Content-Type: application/json" \
  --data '{
      "item": {
        "content": "Pack your boxers."
      }
  }'
