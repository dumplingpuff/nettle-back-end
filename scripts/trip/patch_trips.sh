
curl --include --request PUT http://localhost:3000/trips/2 \
  --header "Authorization: Token token=BAhJIiU4MTgyYmVmN2ViNjRlNzg4ZjYzNThlNWZkZjhiOWYxZAY6BkVG--6a3497056683a3da7b77836d75c4abf256779e92" \
  --header "Content-Type: application/json" \
  --data '{
    "trip": {
      "title": "Wheeee"
    }
  }'
