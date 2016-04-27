curl --include --request POST http://localhost:3000/items \
  --header "Authorization: Token token=BAhJIiViMzFmYTUxMDgwOWY3MjhlOGJlZjVkMjI4MzU3ZDliZAY6BkVG--81f83a84cc000e4ae3e66e9fe9429bc87d692e21" \
  --header "Content-Type: application/json" \
  --data '{
      "item": {
        "content": "Pull your pants up.",
        "trip_id": 2
      }
  }'
