curl --include --request POST http://localhost:3000/reservations \
  --header "Authorization: Token token=BAhJIiVkMTY1Yjg5NjJlNGYyOTI0ZWMyMWQ4YWFkN2FmY2M2OQY6BkVG--88c6cc41ec00bb8b436725df11690ad09aad536d" \
  --header "Content-Type: application/json" \
  --data '{
    "reservation": {
      "user_id": 1,
      "week_id": 1
    }
  }'
