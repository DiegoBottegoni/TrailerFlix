const { DataTypes } = require('sequelize');
const sequelize = require('../conect/conect');

const Genero = sequelize.define('Genero', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
    },
    nombre: {
      type: DataTypes.STRING(255),
      allowNull: false,
    },
  }, {
    tableName: 'genero',
    timestamps: false,
  });

  module.exports = Genero;