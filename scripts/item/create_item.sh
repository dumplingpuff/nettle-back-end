curl --include --request POST http://localhost:3000/items \
  --header "Authorization: Token token=BAhJIiViNDMwZDk4NzU5MjA2ZGFjMzA0ZGU0OGUyMWYwYmIyMwY6BkVG--610dfe621fe003aefc7b48f687b7e0f244dc68e6" \
  --header "Content-Type: application/json" \
  --data '{
      "item": {
        "content": "Pack your boxers."
      }
  }'
