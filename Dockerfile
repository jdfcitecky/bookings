FROM golang
RUN     mkdir -p /app
WORKDIR /app/cmd/web
ADD . /app
RUN     go mod download
RUN    go build -o app
RUN mv 'app' ../../
WORKDIR /app
ENTRYPOINT  ["./app"]

