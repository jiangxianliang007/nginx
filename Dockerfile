FROM nginx:1.18.0

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
ln -sf /dev/stderr /var/log/nginx/error.log

#COPY log-format.conf /etc/nginx/conf.d/log-format.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
#EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]