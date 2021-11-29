export tag=v1.1
root:
	export ROOT=github.com/lbbniu/CloudNative

build:
	echo "building httpserver binary"
	mkdir -p bin/amd64
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/amd64 .

release: build
	echo "building httpserver container"
	docker build -t lbbniu/httpserver:${tag} .

push: release
	echo "pushing lbbniu/httpserver"
	docker push lbbniu/httpserver:${tag}

lbbniu:
	echo "building httpserver container"
	docker build -t lbbniu/httpserver:${tag} -f multi.Dockerfile .
	echo "pushing lbbniu/httpserver"
	docker push lbbniu/httpserver:${tag}