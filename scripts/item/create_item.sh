curl --include --request POST http://localhost:3000/items \
  --header "Authorization: Token token=BAhJIiU3NGU1ZTcxZTZkOGQ3ZTUzZGUwYTZlNjJhNGM2YzQwOAY6BkVG--0bb5ec535408e7fa77f4f5c1dbdb2bd83540b532" \
  --header "Content-Type: application/json" \
  --data '{
      "item": {
        "content": "Pull your pants up."
      }
  }'
