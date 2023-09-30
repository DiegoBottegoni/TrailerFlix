const { DataTypes } = require('sequelize');
const sequelize = require('../conect/conect');

const Genero = require('./genero');


const CatalogoGenero = sequelize.define('CatalogoGenero', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
    },
    idCatalogo: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'Catalogo',
        key: 'id',
      },
    },
    idGenero: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'genero',
        key: 'id',
      },
    },
  }, {
    tableName: 'catalogoGenero',
    timestamps: false,
  });

  CatalogoGenero.belongsTo(Genero, { foreignKey: 'idGenero' });
  
  module.exports = CatalogoGenero;
  
  
  
  
  
  