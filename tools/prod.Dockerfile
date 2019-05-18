FROM node:10

ENV HOME /Express-Play

WORKDIR ${HOME}
ADD . $HOME

RUN yarn install && yarn build

ENV NODE_ENV production

# envs --
ENV SECRET jbmpHPLoaV8N0nEpuLxlpT95FYakMPiu

ENV MONGODB_URI mongodb://thor:qawsed1q2w3e@ds133340.mlab.com:33340/db_dev
ENV POSTGRES_URL postgres://ymuxoegt:ONfBcCQylth3boOdUE2EkcZbC2OAbtcm@tantor.db.elephantsql.com:5432/ymuxoegt
ENV REDIS_URL redis://redis-17929.c1.us-central1-2.gce.cloud.redislabs.com:17929
ENV MYSQL_URL mysql://0Yl8egPIiy:ymqVf7jzmv@remotemysql.com:3306


ENV SENTRY_DSN https://70484e0dda784a1081081ca9c8237792:51b5a95ee1e545efba3aba9103c6193e@sentry.io/236866

ENV RATE_LIMIT 100
# -- envs

# processes --
ENV WEB_CONCURRENCY 1
# -- processes

EXPOSE 3000

CMD node processes.js
