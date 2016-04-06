curl --include --request POST http://localhost:3000/trips \
  --header "Authorization: Token token=BAhJIiU0YzczZjYwZmYyZjIxNWU2MGEwMWEwNmRiMzVhNTMxOAY6BkVG--002f52b1c41ab0f82a6dc6a5adbf1f8e78f50ff4" \
  --header "Content-Type: application/json" \
  --data '{
      "trip": {
        "title": "Boob bomb",
        "location": "New Vermont"
      }
  }'
