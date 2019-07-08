FROM nginx:alpine

COPY bitrix.conf.template /etc/nginx/conf.d/

CMD /bin/sh -c "envsubst '${DOMAIN}' < /etc/nginx/conf.d/bitrix.conf.template > /etc/nginx/conf.d/bitrix.conf && nginx -g 'daemon off;'"