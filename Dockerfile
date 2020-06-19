FROM node:12 AS installer
WORKDIR /srv

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

# -------------------------------

# FROM node:12 AS builder
# WORKDIR /srv

# COPY --from=installer /srv/. .

# -------------------------------

FROM node:12
WORKDIR /srv

ARG APP_ENV
ENV APP_ENV=${APP_ENV}

COPY --from=installer /srv/. .

EXPOSE 8080
ENTRYPOINT ["sh", "./start.sh"]