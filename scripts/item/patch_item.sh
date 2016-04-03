
curl --include --request PATCH http://localhost:3000/items/1 \
  --header "Authorization: Token token=BAhJIiVlN2UyMGJjMTQ0NGY5Y2ExNDY4Y2U0NzEyOTQ4MGExNgY6BkVG--2aaa68131f1b2d2c7db3ec3dd54d4d11deed9819" \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "content": "Take a dump"
    }
  }'
