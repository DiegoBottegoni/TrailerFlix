const { DataTypes } = require('sequelize');
const sequelize = require('../conect/conect');

const Categorias = sequelize.define('Categoria', {
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
}, {
  tableName: "categorias",
  timestamps: false,
});

module.exports = Categorias;
