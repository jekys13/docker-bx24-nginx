FROM nginx:alpine

COPY bitrix.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]