curl --include --request POST http://localhost:3000/trips \
  --header "Authorization: Token token=BAhJIiUwMzRiOWE1NjQ3NzAyYWJhZTUxNmU5MzY4ZjI4MDNhNAY6BkVG--05487801b315cc5791631b8156ab80463bd56756" \
  --header "Content-Type: application/json" \
  --data '{
      "trip": {
        "title": "Babe",
        "location": "New Vermont"
      }
  }'
