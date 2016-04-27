curl --include --request POST http://localhost:3000/trips \
<<<<<<< Updated upstream
  --header "Authorization: Token token=BAhJIiU1MmQ4NzE0NGExODA5MGZmNGNhZTI5ZjY1ZWFlODZiMQY6BkVG--b796b364be7af45fd8339501a1ff13d38144cdf2" \
=======
  --header "Authorization: Token token=BAhJIiViMzFmYTUxMDgwOWY3MjhlOGJlZjVkMjI4MzU3ZDliZAY6BkVG--81f83a84cc000e4ae3e66e9fe9429bc87d692e21" \
>>>>>>> Stashed changes
  --header "Content-Type: application/json" \
  --data '{
      "trip": {
        "title": "Bro Yo",
        "location": "New Vermont",
        "arrival": "20/04/2016"
      }
  }'
