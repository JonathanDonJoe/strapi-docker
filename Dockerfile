FROM strapi/base

WORKDIR /my-path

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

COPY . .

# RUN yarn build
ENTRYPOINT ["./strapi/docker-entrypoint.sh"]

EXPOSE 1337

ENV NODE_ENV production 

CMD ["strapi", "develop"]


