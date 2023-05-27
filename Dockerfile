FROM golang:1.20-alpine

WORKDIR /app

COPY . .

RUN go build -o main ./main.go

EXPOSE ${PORT}

CMD ["/app/main"]