FROM golang as builder
COPY /src .

RUN GOOS=linux go build -ldflags="-s -w"  -o ./soma .
RUN ls

FROM hello-world
COPY --from=builder /go/soma .
COPY /src/soma /soma

ENTRYPOINT ["/soma"]
