curl --include --request POST http://localhost:3000/items \
  --header "Authorization: Token token=BAhJIiU0NzA3NWUxZDNhZDU5YWY5MTJhMjE2ZmM4ZTE5ZjdiYgY6BkVG--56943971582f9b3982d1fce2924aec18960897c0" \
  --header "Content-Type: application/json" \
  --data '{
      "item": {
        "content": "Ripped my pants."
      },
      "tripId": 19
  }'
