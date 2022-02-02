FROM centos:7.7.1908

MAINTAINER "shrikanthkrishnamoorthy@gmail.com "

#RUN yum update -y

RUN yum -y install epel-release

RUN yum  install nginx  wget  net-tools  netstat bind-utils unzip  -y

RUN yum clean all

RUN rm -rf  /var/cache/yum/*

WORKDIR /usr/share/nginx/html

COPY  index.html  /usr/share/nginx/html

EXPOSE 80
EXPOSE 443

CMD ["nginx","-g","daemon off;"]

