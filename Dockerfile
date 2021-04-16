FROM strapi/base

WORKDIR /usr/app/strapi

COPY ./package.json ./

RUN npm install

COPY . .

ENV NODE_ENV production

EXPOSE 1337

CMD ["npm", "run", "start"]
