#create new reservation -- this works
curl --include --request POST http://localhost:3000/reservations \
  --header "Authorization: Token token=BAhJIiUzYjdiN2JmOGMwMTAzZjdkZjBjNjE5MmY2ZTc0NGU1YgY6BkVG--e91241b312b05e38ac35b1704060f1013705d29a" \
  --header "Content-Type: application/json" \
  --data '{
    "reservation": {
      "user_id": 1,
      "start_date": "2017-07-09",
      "end_date": "2017-07-15",
      "comments": "Bring dog!"
    }
  }'

# delete
  curl --include --request DELETE http://localhost:3000/reservations/1 \
    --header "Authorization: Token token=BAhJIiUzYjdiN2JmOGMwMTAzZjdkZjBjNjE5MmY2ZTc0NGU1YgY6BkVG--e91241b312b05e38ac35b1704060f1013705d29a"

#update or PATCH
curl --include --request PATCH http://localhost:3000/reservations/1 \
  --header "Authorization: Token token=BAhJIiUzYjdiN2JmOGMwMTAzZjdkZjBjNjE5MmY2ZTc0NGU1YgY6BkVG--e91241b312b05e38ac35b1704060f1013705d29a" \
  --header "Content-Type: application/json" \
  --data '{
    "reservation": {
      "comments": "Bringing the cat!"
    }
  }'

  curl --include --request GET http://localhost:3000/reservations/1 \
    --header "Authorization: Token token=BAhJIiUzYjdiN2JmOGMwMTAzZjdkZjBjNjE5MmY2ZTc0NGU1YgY6BkVG--e91241b312b05e38ac35b1704060f1013705d29a"
