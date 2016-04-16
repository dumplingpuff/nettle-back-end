curl --include --request POST http://localhost:3000/trips \
  --header "Authorization: Token token=BAhJIiU4YjkzNTFiYmI0ZDJhYzA1YThjZTE4N2JhZjMxNzllOAY6BkVG--d3b28dc3c43343556ab0851c82da9940693f7bec" \
  --header "Content-Type: application/json" \
  --data '{
      "trip": {
        "title": "Bro Yo",
        "location": "New Vermont"
      }
  }'
