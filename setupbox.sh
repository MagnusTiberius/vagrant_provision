#!/bin/sh

#install golang
sudo wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
sudo tar -zxvf go1.9.linux-amd64.tar.gz
sudo mv go /usr/local

#install git
sudo apt-get install git

#install gRPC
go get -u github.com/golang/protobuf/proto
go get -u github.com/golang/protobuf/protoc-gen-go
go get -u google.golang.org/grpc


#install docker
sudo wget https://download.docker.com/linux/static/stable/x86_64/docker-17.03.0-ce.tgz
sudo tar -xzvf docker-17.03.0-ce.tgz
sudo cp docker/* /usr/bin/
sudo dockerd &
