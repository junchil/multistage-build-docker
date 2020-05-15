#Build Stage
FROM golang:alpine AS build

ENV GO111MODULE=on

WORKDIR /app

ADD ./ /app

RUN apk update --no-cache && \
    apk add git

RUN go build -o golang-test  .

#Run Stage
FROM alpine:latest

COPY --from=build /app/golang-test /app/

EXPOSE 8000

ENTRYPOINT ["/app/golang-test"]