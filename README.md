# golang-alpine-builder

A Docker image for building golang projects.  This image is derived from the [official](https://hub.docker.com/_/golang/) golang image.

It includes additional useful go packages:

* [dep](github.com/golang/dep/cmd/dep)
* [gometalinter](github.com/alecthomas/gometalinter)
* [courtney](https://github.com/dave/courtney)
* [vgo](https://github.com/golang/go/wiki/vgo-user-guide)
* [golangci-lint](https://github.com/golangci/golangci-lint)
* [goverreport](https://github.com/mcubik/goverreport)
* [go-critic](https://go-critic.github.io)
* [ghost](https://github.com/elliotchance/ghost)
