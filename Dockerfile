FROM golang:1.15.7-alpine

RUN mkdir /api
WORKDIR /api
COPY ./src .

RUN go mod download

EXPOSE 8080

RUN go build -o output main.go
CMD ["./output"]