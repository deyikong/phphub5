# deyikong/php-debug:2018-04-23
FROM deyikong/php:2018-04-23

COPY xdebug.ini /tmp

RUN apt-get update && \

    apt-get install --no-install-recommends --no-install-suggests -y \

        # Install xdebug
        php${PHP_VERSION}-xdebug && \

        # Configure XDebug
        cat /tmp/xdebug.ini >> /etc/php/${PHP_VERSION}/mods-available/xdebug.ini && \
        rm /tmp/xdebug.ini && \

    # Cleanup
    apt-get remove -y && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
