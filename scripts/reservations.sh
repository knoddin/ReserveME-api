# create reservation

curl --include --request POST http://localhost:3000/reservations \
  --header "Content-Type: application/json" \
  --data '{
    "reservation": {
      "dates": "knoddin32@gmail.com",
      "password": "123",
      "password_confirmation": "123"
    }
  }'
