FROM golang:1.10.8 as builder

WORKDIR /go/src/mesh-perf
COPY . .

RUN go get -d -v ./...
RUN CGO_ENABLED=0 go install -v ./...

FROM alpine:3.8
WORKDIR /root/
COPY --from=builder /go/bin/mesh-perf /usr/local/bin/mesh-perf

ENTRYPOINT ["/usr/local/bin/mesh-perf"]
