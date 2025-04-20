FROM node:12-alpine
RUN apk add --no-cache git
RUN git clone -q https://github.com/1adam-1/todo-app.git
WORKDIR /todo-app
RUN yarn install --production
CMD ["node","/src/index.js"]