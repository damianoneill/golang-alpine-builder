FROM golang:alpine

RUN apk update; apk add git gcc musl-dev


RUN go get -u github.com/golang/dep/cmd/dep
RUN go get -u github.com/alecthomas/gometalinter && gometalinter --install
RUN go get -u github.com/dave/courtney  

CMD ["/bin/sh"]