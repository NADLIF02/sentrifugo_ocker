RUN apt-get -y update && \
    apt-get -y install software-properties-common wget && \
    add-apt-repository -y ppa:ondrej/php && \
    apt-get -y update && \
    apt-get install -y \
        php5.2 \
        libapache2-mod-php5.2 \
        php5.2-common \
        php5.2-mbstring \
        php5.2-xmlrpc \
        php5.2-soap \
        php5.2-gd \
        php5.2-xml \
        php5.2-intl \
        php5.2-mysql \
        php5.2-cli \
        php5.2-ldap \
        php5.2-zip \
        php5.2-curl && \
    wget -O phpunit https://phar.phpunit.de/phpunit-8.phar && \
    chmod +x phpunit && \
    apt-get clean

# Copy configurations and application files
COPY sentrifugo.conf /etc/apache2/sites-available/sentrifugo.conf
COPY --chown=www-data:www-data sentrifugo /var/www/html/

# Configure Apache and restart
RUN a2ensite sentrifugo && \
    a2enmod rewrite && \
    service apache2 restart && \
    rm /var/www/html/index.html
