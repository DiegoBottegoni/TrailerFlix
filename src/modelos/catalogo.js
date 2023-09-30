const { DataTypes } = require('sequelize');
const sequelize = require('../conect/conect');

const Categorias = require('./categoria');

const Catalogo = sequelize.define('Catalogo', {
  id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    autoIncrement: true,
    primaryKey: true,
  },
  poster: {
    type: DataTypes.STRING(500),
    allowNull: false,
  },
  titulo: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  idCategoria: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  resumen: {
    type: DataTypes.STRING(1000),
    allowNull: false,
  },
  temporadas: {
    type: DataTypes.INTEGER,
  },
  trailer: {
    type: DataTypes.STRING(500),
    allowNull: true,
  },
}, {
  tableName: "catalogo",
  timestamps: false,
});

Catalogo.belongsTo(Categorias, { foreignKey: 'idCategoria' });

module.exports = Catalogo;
