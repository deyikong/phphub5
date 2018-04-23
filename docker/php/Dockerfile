# deyikong/php:2018-04-23
FROM php:7.2

RUN apt-get update && \

    apt-get install --no-install-recommends --no-install-suggests -y \

        # phpunit requirements
        php${PHP_VERSION}-dom \

        # raven requirements
        php${PHP_VERSION}-mysql \
        imagemagick \
        libmagickwand-dev \
        php${PHP_VERSION}-bcmath \
        php${PHP_VERSION}-dev \
        php${PHP_VERSION}-gd \
        php${PHP_VERSION}-gmp \
        php${PHP_VERSION}-pgsql \
        php${PHP_VERSION}-redis \
        php-imagick \

        # memcache requirements
        memcached php${PHP_VERSION}-memcached \

        # Intrepreter for the PostScript language and for PDF
        ghostscript && \

    # Cleanup
    apt-get remove -y && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
