FROM golang:1.19

WORKDIR /app

ADD go.mod ./

ADD go.sum ./

RUN go mod download

ADD . .

RUN go build -o /envoy-example-server ./internal/example/main/main.go

CMD [ "/envoy-example-server" ]

EXPOSE 18000