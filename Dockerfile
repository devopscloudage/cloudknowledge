FROM centos:latest
MAINTAINER arunkumarreddy321@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip  /var/www/html/
WORKDIR  /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rvf __MACOSX markups-foste foste.zip
CMD ["/usr/sbin/httpd" , "-D",  "FOREGROUND"]
EXPOSE 80
