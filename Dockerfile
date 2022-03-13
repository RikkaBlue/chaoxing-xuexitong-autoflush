FROM node:fermium-alpine3.11

WORKDIR /app

COPY ./package*.json /app/

RUN npm config set registry https://registry.npmmirror.com
RUN yarn install && \
     yarn install --production  && \
     yarn cache clean

COPY ./ /app/

CMD ["yarn", "start"]

