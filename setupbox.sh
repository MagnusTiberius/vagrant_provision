#!/bin/sh

#wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
sudo tar -zxvf go1.9.linux-amd64.tar.gz.1
sudo mv go /usr/local

sudo apt-get install git

go get -u github.com/golang/protobuf/proto
go get -u github.com/golang/protobuf/protoc-gen-go
go get -u google.golang.org/grpc

