curl --include --request PATCH http://localhost:3000/trips/3/invite \
  --header "Authorization: Token token=BAhJIiUzYzcyZmVhZWJhYjNmYjczYmE2ZDExMWJlOTVjYTQ4MAY6BkVG--6f44316e35f61eb4ce8a2f5fac0fc9ab5f4118d1" \
  --header "Content-Type: application/json" \
  --data '{
    "trip": {
      "users": {
        "id": 1,
        "email": "an@example.email"
      }
    }
  }'
