NAME     := go-message
VERSION  := v0.0.1
REVISION := $(shell git rev-parse --short HEAD)
SRCS    := $(shell find . -type f -name '*.go')
LDFLAGS := -ldflags="-s -w -X \"main.Version=$(VERSION)\" -X \"main.Revision=$(REVISION)\" -extldflags \"-static\""

bin/$(NAME): $(SRCS)
	go build -a -tags studygo -installsuffix studygo $(LDFLAGS) -o bin/$(NAME)
clean:
	rm -rf bin
