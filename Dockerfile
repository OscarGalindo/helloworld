FROM node
RUN mkdir /app
COPY package.json /app

WORKDIR /app
RUN npm install
COPY . /app

RUN npm test && npm build

CMD node index.js
