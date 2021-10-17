FROM golang:1.16-alpine AS build
WORKDIR /go/src
COPY ../ /go/src
WORKDIR /go/src/httpserver
RUN go env -w GOPROXY=https://goproxy.cn,direct && go build

FROM ubuntu
ENV MY_SERVICE_PORT=80
LABEL multi.author="lbbniu" multi.email="lbbniu@gmial.com" github="https://github.com/lbbniu"
COPY --from=build /go/src/httpserver/httpserver /httpserver
EXPOSE 80
ENTRYPOINT /httpserver
