FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "todo_item_dynamically.html"]
EXPOSE 8000
