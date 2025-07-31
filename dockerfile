FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --omit=dev && npm audit fix --force

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start:dev"]
