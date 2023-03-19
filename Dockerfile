FROM amazonlinux
MAINTAINER  arunkumarreddy321@gmail.com
RUN yum install -y httpd \
     zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/foste.zip  /var/www/html/
WORKDIR  /var/www/html
RUN unzip foste.zip
RUN cp -rvf foste/* .
RUN rm -rvf foste foste.zip
CMD ["/usr/sbin/httpd" , "-D",  "FOREGROUND"]
EXPOSE 80
