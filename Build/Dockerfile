FROM nginx:latest

#RUN adduser -D myuser
#USER myuser

RUN apt-get update && apt-get install -y procps net-tools tcpdump supervisor libpq-dev gettext-base

RUN mkdir -p /usr/share/nginx/server
COPY ./server /usr/share/nginx/server
RUN chmod -R 777 /usr/share/nginx/server

COPY ./client /usr/share/nginx/html
COPY ./nginx_default.conf.template /etc/nginx/conf.d/default.conf.template

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Heroku
CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx && /usr/bin/supervisord

# Generic Docker
# CMD /bin/bash -c nginx && /usr/bin/supervisord


