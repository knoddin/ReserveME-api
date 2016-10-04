#create new reservation -- this works
curl --include --request POST http://localhost:3000/reservations \
  --header "Authorization: Token token=BAhJIiVlODUwMDA0MzJiN2YxMDFjNTZjMTY1NDI0MWIyYmY5OQY6BkVG--008282bbd7d122beb1afab265e7f2de1941b46f7" \
  --header "Content-Type: application/json" \
  --data '{
    "reservation": {
      "user_id": 1,
      "week_id": 7
    }
  }'

# delete
  curl --include --request DELETE http://localhost:3000/reservations/3 \
    --header "Authorization: Token token=BAhJIiVlODUwMDA0MzJiN2YxMDFjNTZjMTY1NDI0MWIyYmY5OQY6BkVG--008282bbd7d122beb1afab265e7f2de1941b46f7"
