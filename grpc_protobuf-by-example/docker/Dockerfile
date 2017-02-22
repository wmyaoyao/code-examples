FROM golang:1.8

# Install protobuf
RUN apt-get update && \
    apt-get install -y zip
RUN mkdir -p /tmp/proto && \
    cd /tmp/proto && \
    wget https://github.com/google/protobuf/releases/download/v3.2.0/protoc-3.2.0-linux-x86_64.zip && \
    unzip protoc-3.2.0-linux-x86_64.zip && \
    mv ./bin/protoc /usr/local/go/bin && \
    rm -rf /tmp/proto
