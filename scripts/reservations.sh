curl --include --request POST http://localhost:3000/reservations \
  --header "Authorization: Token token=BAhJIiVjODdiNTBhMTYxYjdjYzQ1YjY3YjUzM2IxYmJkYjMyMQY6BkVG--119c2b5bcff5c7b5461bf8a006ffc8870f18e882" \
  --header "Content-Type: application/json" \
  --data '{
    "reservation": {
      "user_id": 1,
      "week_id": 7
    }
  }'
