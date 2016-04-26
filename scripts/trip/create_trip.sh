curl --include --request POST http://localhost:3000/trips \
  --header "Authorization: Token token=BAhJIiU1MmQ4NzE0NGExODA5MGZmNGNhZTI5ZjY1ZWFlODZiMQY6BkVG--b796b364be7af45fd8339501a1ff13d38144cdf2" \
  --header "Content-Type: application/json" \
  --data '{
      "trip": {
        "title": "Bro Yo",
        "location": "New Vermont",
        "arrival": "20/04/2016"
      }
  }'
