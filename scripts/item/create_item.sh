curl --include --request POST http://localhost:3000/items \
  --header "Authorization: Token token=BAhJIiU5MzkyNGQwZWUzMWJkOTYyNzQyMmIzYzI1ZWEyMmYxMwY6BkVG--68ba12e5a9e23416eb2355dd18b439def598fe30" \
  --header "Content-Type: application/json" \
  --data '{
      "item": {
        "content": "Pull your pants up.",
        "trip_id": 5
      }
  }'
