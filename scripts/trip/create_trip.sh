curl --include --request POST http://localhost:3000/trips \
  --header "Authorization: Token token=BAhJIiUyYjQ2NjI0YmY3MGQxZWNiNWM2ZjVkZmM1N2QwY2FkZAY6BkVG--7666b3b8fa4d988bdbde15523fdc2bc4b558512b" \
  --header "Content-Type: application/json" \
  --data '{
      "trip": {
        "title": "Bombb",
        "location": "New Vermont"
      }
  }'
