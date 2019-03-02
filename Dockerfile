FROM golang:1.12

RUN mkdir -p /test/github.com/jbub/censusthrift
COPY go.mod go.sum main.go /test/github.com/jbub/censusthrift/

WORKDIR /test/github.com/jbub/censusthrift

RUN ["go", "env"]
RUN ["go", "build"]
