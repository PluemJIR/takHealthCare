'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class healthitemlist extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  healthitemlist.init({
    groupid: DataTypes.INTEGER,
    listname: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'healthitemlist',
    tableName:'healthitemlist',
    timestamps: false
  });
  return healthitemlist;
};