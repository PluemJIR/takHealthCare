'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class co_office extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  co_office.init({
    off_id: {
      type: DataTypes.STRING,
      primaryKey: true
  },
    off_name: DataTypes.STRING,
    off_type: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'co_office',
    tableName:'co_office',
    timestamps: false
  });
  return co_office;
};