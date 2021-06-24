'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class healthcriteria extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  healthcriteria.init({
    vcenter: DataTypes.STRING,
    advice: DataTypes.STRING,
    hospcode: DataTypes.INTEGER,
    listid: DataTypes.INTEGER,
    comment: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'healthcriteria',
    tableName:'healthcriteria',
    timestamps: false
  });
  return healthcriteria;
};