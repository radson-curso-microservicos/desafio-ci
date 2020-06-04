FROM golang as builder
COPY /src .

RUN GOOS=linux go build -ldflags="-s -w" .
RUN ls

FROM hello-world
COPY --from=builder /go/soma .
COPY /src .
RUN ls

ENTRYPOINT ["/soma"]
