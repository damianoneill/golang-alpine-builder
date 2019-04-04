FROM golang:1.12.1-alpine

RUN apk update && apk add git gcc libc-dev make

ENV GO111MODULE=auto

RUN go get -u github.com/golang/dep/cmd/dep
RUN go get -u github.com/dave/courtney
RUN go get -u github.com/golangci/golangci-lint/cmd/golangci-lint
RUN go get -u github.com/mcubik/goverreport
RUN go get -v github.com/go-lintpack/lintpack/...
RUN go get -u github.com/go-critic/go-critic/...
RUN lintpack build -o gocritic -linter.name='gocritic' github.com/go-critic/go-critic/checkers && mv gocritic /go/bin/
RUN go get -u github.com/elliotchance/ghost

CMD ["/bin/sh"]
