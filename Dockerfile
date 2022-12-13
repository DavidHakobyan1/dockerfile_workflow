FROM golang:1.16-alpine

WORKDIR /app

COPY . .

RUN ls

RUN go build -v ./...

RUN go test -v ./...

CMD [ "go", "run", "/app/main.go" ]
