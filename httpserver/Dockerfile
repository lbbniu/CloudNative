FROM ubuntu
ENV MY_SERVICE_PORT=80
LABEL multi.author="lbbniu" multi.email="lbbniu@gmial.com" github="https://github.com/lbbniu"
ADD bin/amd64/httpserver /httpserver
EXPOSE 80
ENTRYPOINT /httpserver
