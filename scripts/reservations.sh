curl --include --request POST http://localhost:3000/reservations \
  --header "Authorization: Token token=BAhJIiU1N2Q0NDk4OTE1NDJkOTYxOWVmMDQzMDcxM2QzMDFiZQY6BkVG--08dc31fe2a5d6f7f75930787984f18308309c55d" \
  --header "Content-Type: application/json" \
  --data '{
    "reservation": {
      "user_id": 1,
      "week_id": 7
    }
  }'
