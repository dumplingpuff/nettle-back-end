
curl --include --request PUT http://localhost:3000/trips/3 \
  --header "Authorization: Token token=BAhJIiUxNWVmYmExZWJlZDgxMWI2ZTc2NWQyMDExODllNTc5YQY6BkVG--bdca854ebdd624d9d8d691880cca6e68f794a1b0" \
  --header "Content-Type: application/json" \
  --data '{
    "trip": {
      "title": "Put Request"
    }
  }'
