FROM node:12.16-alpine

WORKDIR /home/app/

COPY package.json yarn.lock ./

RUN yarn && yarn cache clean

COPY . ./

RUN yarn build

EXPOSE 3000

CMD ["node", "dist/main"]