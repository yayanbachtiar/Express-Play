import Sequelize from 'sequelize';

import { MYSQL_URL } from '~/env';

const sequelize = new Sequelize(MYSQL_URL, {
  dialect: 'mysql',
  logging: false,
  sync: { force: true },
});

export default sequelize;
