FROM golang:alpine

RUN apk update; apk add git gcc musl-dev make


RUN go get -u github.com/golang/dep/cmd/dep
RUN go get -u github.com/alecthomas/gometalinter && gometalinter --install
RUN go get -u github.com/dave/courtney  
RUN go get -u golang.org/x/vgo
RUN go get -u github.com/golangci/golangci-lint/cmd/golangci-lint
RUN go get -u github.com/mcubik/goverreport
RUN go get -u github.com/go-critic/go-critic/...
RUN go get -u github.com/elliotchance/ghost

CMD ["/bin/sh"]