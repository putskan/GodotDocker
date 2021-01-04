FROM nginx:latest

RUN apt-get update && apt-get install -y procps net-tools tcpdump supervisor libpq-dev gettext-base

# copy server-side
RUN mkdir -p /usr/share/nginx/server
COPY ./server /usr/share/nginx/server
RUN chmod -R 777 /usr/share/nginx/server

# copy client-side
COPY ./client /usr/share/nginx/html

# run server
RUN nginx
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
