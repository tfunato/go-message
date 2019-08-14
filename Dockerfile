FROM golang:1.12.7

WORKDIR $GOPATH
RUN go get github.com/derekparker/delve/cmd/dlv
RUN go get github.com/oxequa/realize
