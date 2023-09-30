const { DataTypes } = require('sequelize');
const sequelize = require('../conect/conect');

const ActorActriz = sequelize.define('ActorActriz', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
    },
    nombre: {
      type: DataTypes.STRING(50),
      allowNull: false,
    },
    idCategoria: {
      type: DataTypes.INTEGER,
    },
  }, {
    tableName: 'actricesyactores',
    timestamps: false,
  });
  
  module.exports = ActorActriz;