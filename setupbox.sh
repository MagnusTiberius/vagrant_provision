#!/bin/sh

#install golang
#sudo wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz >/dev/null 2>&1
sudo tar -zxvf go1.9.linux-amd64.tar.gz
sudo mv go /usr/local

#install git
sudo apt-get -y install git

sudo groupadd docker
sudo usermod -aG docker $USER

#install docker
#sudo wget https://download.docker.com/linux/static/stable/x86_64/docker-17.03.0-ce.tgz >/dev/null 2>&1
sudo tar -xzvf docker-17.03.0-ce.tgz
sudo cp docker/* /usr/bin/

#fix: ref-> https://stackoverflow.com/questions/24396071/docker-error-mountpoint-not-found
sudo apt-get -y install cgroup-bin

#run daemon
#sudo dockerd &

#install google cloud sdk
#wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-169.0.0-linux-x86_64.tar.gz >/dev/null 2>&1
sudo tar -xzvf google-cloud-sdk-169.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh

#install couchbase
curl -O http://packages.couchbase.com/releases/couchbase-release/couchbase-release-1.0-3-amd64.deb 
sudo dpkg -i couchbase-release-1.0-3-amd64.deb
#sudo apt-get update
sudo apt-get install couchbase-server-community

#run couchbase
#sudo docker run -d -p 8091-8093:8091-8093 -p 11210:11210 couchbase
