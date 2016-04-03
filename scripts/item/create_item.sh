curl --include --request POST http://localhost:3000/items \
  --header "Authorization: Token token=BAhJIiUzZjg1YzU1MjFiMDNhZWYyMzRhNjM4NTQ3MmQ2OTQ3OAY6BkVG--68aa09bd61303ae1ddb47d429cc882dd75f386ec" \
  --header "Content-Type: application/json" \
  --data '{
      "item": {
        "content": "Pack your boxers."
      }
  }'
