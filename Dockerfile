FROM businesstools/nginx-php:1.9.3

WORKDIR /var/www

RUN curl -Ls -o /tmp/redaxo.zip https://github.com/redaxo/redaxo4/releases/download/4.7.3/redaxo4_7_3.zip && \
      unzip /tmp/redaxo.zip && \
      rm -rf /tmp/redaxo.zip html && \
      chown -R www-data:www-data redaxo && \
      mv redaxo html

COPY etc/nginx.default.conf /etc/nginx/conf.d/default.conf
