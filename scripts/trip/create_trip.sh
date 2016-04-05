curl --include --request POST http://localhost:3000/trips \
  --header "Authorization: Token token=BAhJIiVmNWQ1NGY4ODE5NTMyOTMzMjZkNWI4YWNmZDM3YmI0YQY6BkVG--4aab803ea555e35476f22d71e1018e99790d2b37" \
  --header "Content-Type: application/json" \
  --data '{
      "trip": {
        "title": "Boob bomb",
        "location": "New Vermont"
      }
  }'
