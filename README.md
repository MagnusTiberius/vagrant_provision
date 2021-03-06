# Vagrant Provision Ubuntu Trusty
Vagrant provision script for ubuntu/trusty64

Vagrant Box location: 
https://app.vagrantup.com/MagnusTiberius/boxes/couchbase_golang

The following items are in the provision:

1. Golang 9 (go1.9.linux-amd64.tar.gz)
2. Git
3. Docker (docker-17.03.0-ce.tgz)
4. Google Cloud SDK (google-cloud-sdk-169.0.0-linux-x86_64.tar.gz)
5. CouchBase (couchbase-release-1.0-3-amd64.deb)


Golang Projects: 
1. github.com/golang/protobuf/proto
2. github.com/golang/protobuf/protoc-gen-go
3. google.golang.org/grpc
4. github.com/go-swagger/go-swagger/cmd/swagger
5. github.com/spf13/cobra/cobra
6. go.uber.org/zap
7. github.com/golang/dep/cmd/dep

Environment Variables:
1. GOROOT
2. GOPATH


Notes:
1. Run docker server: $ sudo dockerd&
2. Couchbase web admin: http://127.0.0.1:8091


Features for next version:
1. Multi-machine config
2. Kubernetes


Contact:
Ben Gonzales
bgonzales20001@gmail.com
