FROM golang:alpine

RUN apk update; apk add git


RUN go get -u github.com/golang/dep/cmd/dep
RUN go get -u github.com/alecthomas/gometalinter

CMD ["/bin/sh"]