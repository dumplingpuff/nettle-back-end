curl --include --request POST http://localhost:3000/trips \
  --header "Authorization: Token token=BAhJIiUxYWZhNDE5YmJlZWJlZTY1YTZkODBjOTNlOTQxMGQ5MwY6BkVG--3fa68e21718666f1d4043e61d8e4d98f690e27d0" \
  --header "Content-Type: application/json" \
  --data '{
      "trip": {
        "title": "Daleeekkksss",
        "location": "New Vermont"
      }
  }'
