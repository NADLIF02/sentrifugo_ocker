FROM ubuntu/apache2

RUN apt-get -y update && \
	apt-get -y install software-properties-common wget && \
	add-apt-repository -y ppa:ondrej/php && \
	apt-get install -y \
		php8.1 \
		ibapache2-mod-php8.1 \
		php8.1-common \
		php8.1-mbstring \
		php8.1-xmlrpc \
		php8.1-soap \
		php8.1-gd \
		php8.1-xml \
		php8.1-intl \
		php8.1-mysql \
		php8.1-cli \
		php8.1-ldap \
		php8.1-zip \
		php8.1-curl && \
	wget -O phpunit https://phar.phpunit.de/phpunit-8.phar && \
	chmod +x phpunit

COPY sentrifugo.conf /etc/apache2/sites-available/sentrifugo.conf
COPY --chown=www-data:www-data sentrifugo /var/www/html/

RUN a2ensite sentrifugo && \
	a2enmod rewrite && \
	service apache2 restart && \
	rm /var/www/html/index.html
