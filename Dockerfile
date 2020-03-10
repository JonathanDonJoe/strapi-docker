FROM strapi/base

RUN yarn global add strapi@3.0.0-beta.18.2
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


