FROM centos:centos7

MAINTAINER nizhenxian nizhenxian@bytedance.com

WORKDIR "/twemproxy"

ADD twemproxy-0.5.0.tar.gz ./

RUN yum -y install gcc automake autoconf libtool make && \
    cd twemproxy-0.5.0 && ./configure --disable-dependency-tracking && make && make install

CMD ["src/nutcracker"]
