# create reservation

curl --include --request POST http://localhost:3000/reservations \
  --header "Content-Type: application/json" \
  --data '{
    "reservation": {
      "start_date": "2016-10-01",
      "end_date": "2016-10-08",
      "user_id": "1"
    }
  }'
