#源镜像
FROM golang:latest
#FROM daocloud.io/library/centos:latest
#FROM daocloud.io/golang:1.3-onbuild
FROM centos
#作者
MAINTAINER fpbear 1158066739@qq.com
#设置工作目录
RUN export GOROOT=/go
RUN export PATH=$PATH:/usr/local/go/bin
#ENV GOROOT /usr/local/go
#ENV GOPATH /usr/local/go/bin
RUN echo $GOROOT
RUN echo $PATH
RUN go version
ENV dir /root/testgin
WORKDIR $dir
COPY . $dir
RUN go build -o testgin main.go
EXPOSE 9909
ENTRYPOINT ["./testgin"]
