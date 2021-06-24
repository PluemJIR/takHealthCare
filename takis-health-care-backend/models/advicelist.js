'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class advicelist extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  advicelist.init({
    itemid: DataTypes.INTEGER,
    hospcode: DataTypes.STRING,
    desc: DataTypes.STRING,
    sort: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'advicelist',
    tableName:'advicelist',
    timestamps: false
  });
  return advicelist;
};