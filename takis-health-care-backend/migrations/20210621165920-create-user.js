'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('users', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      username: {
        type: Sequelize.STRING
      },
      email: {
        type: Sequelize.STRING
      },
      password_hash: {
        type: Sequelize.STRING
      },
      auth_key: {
        type: Sequelize.STRING
      },
      confirmed_at: {
        type: Sequelize.INTEGER
      },
      unconfirmed_email: {
        type: Sequelize.STRING
      },
      blocked_at: {
        type: Sequelize.INTEGER
      },
      registration_ip: {
        type: Sequelize.STRING
      },
      flags: {
        type: Sequelize.INTEGER
      },
      last_login_at: {
        type: Sequelize.INTEGER
      },
      passwords: {
        type: Sequelize.STRING
      },
      hospcode: {
        type: Sequelize.STRING
      },
      fullname: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('users');
  }
};