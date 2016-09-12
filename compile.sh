#!/bin/sh

PWD=pwd

yum install -y libexif-devel libjpeg-devel gd-devel curl-devel openssl-devel libxml2-devel

cd /tmp
wget http://ro1.php.net/get/php-5.6.25.tar.gz/from/this/mirror -O php-5.6.x.tar.gz
rm -rf php-5.6.x/
tar zxvf php-5.6.x.tar.gz

cd php-5.6.x/

./configure --prefix=/tmp/php-5.6.x/compiled/	\
	--without-pear	\
	--enable-shared=no	\
	--enable-static=yes	\
	--enable-phar	\
	--enable-json	\
	\
	--disable-all	\
	--with-openssl	\
	--with-curl	\
	\
	--enable-libxml	\
	--enable-simplexml	\
	--enable-xml	\
	\
	--with-mhash	\
	\
	--with-gd	\
	--enable-exif	\
	--with-freetype-dir	\
	\
	--enable-mbstring	\
	\
	--enable-sockets \
	--enable-bcmath


make
make install 

cd $PWD


