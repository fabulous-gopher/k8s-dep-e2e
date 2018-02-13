#! /usr/bin/env bash
# Attempt migrating kubernetes from godep to deps
set -xeuo pipefail

# Install dep
go get -u github.com/golang/dep/cmd/dep

# Clone k8s, ignoring "no building Go files"
go get -d k8s.io/kubernetes || true

# Migrate to dep
cd $GOPATH/src/k8s.io/kubernetes
dep init -v

# Will it blend?
make
