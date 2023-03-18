FROM centos
MAINTAINER arunkumarreddy321@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/apollo.zip /var/www/html/
WORKDIR  /var/www/html
RUN unzip apollo.zip
RUN cp -rvf apollo/* .
RUN rm -rvf apollo apollo.zip
CMD ["/usr/sbin/httpd" , "-D",  "FOREGROUND"]
EXPOSE 80

