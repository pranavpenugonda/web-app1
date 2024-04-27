FROM nginx:alpine

COPY default.conf /etc/nginx/conf.d/default.conf
COPY todo_item_dynamically.html /usr/share/nginx/html/todo_item_dynamically.html
