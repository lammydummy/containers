FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS zalta.3bhzmi5.mongodb.net
ENV MONGODB_USERNAME zalta
ENV MONGODB_PASSWORD zaltabot

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]