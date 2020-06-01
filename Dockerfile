FROM golang as builder
COPY /src/soma.go .
COPY /src/soma_test.go .

RUN GOOS=linux go build -ldflags="-s -w" soma.go
RUN ls

FROM hello-world
COPY --from=builder /go/soma .
COPY /src .

ENTRYPOINT ["/soma"]
