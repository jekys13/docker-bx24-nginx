FROM nginx:alpine

COPY bitrix.conf.template /etc/nginx/conf.d/

CMD /bin/bash -c "envsubst < /etc/nginx/conf.d/bitrix.conf.template > /etc/nginx/conf.d/bitrix.conf && nginx -g 'daemon off;'"