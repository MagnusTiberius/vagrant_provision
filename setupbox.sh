#!/bin/sh

#install golang
sudo wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
sudo tar -zxvf go1.9.linux-amd64.tar.gz
sudo mv go /usr/local

#install git
sudo apt-get install git

#install gRPC
sudo go get -u github.com/golang/protobuf/proto
sudo go get -u github.com/golang/protobuf/protoc-gen-go
sudo go get -u google.golang.org/grpc

sudo groupadd docker
sudo usermod -aG docker $USER

#install docker
sudo wget https://download.docker.com/linux/static/stable/x86_64/docker-17.03.0-ce.tgz
sudo tar -xzvf docker-17.03.0-ce.tgz
sudo cp docker/* /usr/bin/

#fix: ref-> https://stackoverflow.com/questions/24396071/docker-error-mountpoint-not-found
sudo apt-get install cgroup-bin

sudo dockerd &

#test
sudo docker run hello-world


#install google cloud sdk
sudo export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
sudo echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo sudo apt-get update && sudo apt-get install google-cloud-sdk
sudo apt-get install kubectl

