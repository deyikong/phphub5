# us.gcr.io/raven-185914/api-web-prod
FROM us.gcr.io/raven-185914/api-web:2018-01-10

# supervisord needs to be started by the root user
ENV LOCAL_USER_ID 0

# route Laravel logs to error log so Google App Engine can capture them
ENV APP_LOG errorlog
ENV APP_LOG_LEVEL error

# copy the site files into the image
ADD . /var/www

# Add production supervisor workers
ADD ./docker/web-prod/supervisor/lumen-worker.conf /etc/supervisor/conf.d/lumen-worker.conf
ADD ./docker/web-prod/supervisor/artisan-scheduler.conf /etc/supervisor/conf.d/artisan-scheduler.conf

# add production site nginx config
ADD ./docker/web-prod/nginx.conf /etc/nginx/sites-available/default

# Remove unneeded files
RUN rm -rf /var/www/.git
RUN rm -rf /var/www/docker
RUN rm -rf /var/www/google
RUN rm -rf /var/www/bin
RUN rm -rf /var/www/node_modules
RUN rm -rf /var/www/raml
RUN rm -rf /var/www/features
RUN rm -rf /var/www/tests

# Rename .env.prod to .env
RUN mv .env.prod .env

# fix permissions on /var/www
RUN chown -R www-data:www-data /var/www

CMD supervisord -n
