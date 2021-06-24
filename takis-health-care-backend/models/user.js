'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class user extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  user.init({
    username: DataTypes.STRING,
    email: DataTypes.STRING,
    password_hash: DataTypes.STRING,
    auth_key: DataTypes.STRING,
    confirmed_at: DataTypes.INTEGER,
    unconfirmed_email: DataTypes.STRING,
    blocked_at: DataTypes.INTEGER,
    registration_ip: DataTypes.STRING,
    flags: DataTypes.INTEGER,
    last_login_at: DataTypes.INTEGER,
    passwords: DataTypes.STRING,
    hospcode: DataTypes.STRING,
    fullname: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'user',
    tableName:'user',
    timestamps: false
    
  });
  return user;
};