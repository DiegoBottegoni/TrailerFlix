const { DataTypes } = require('sequelize');
const sequelize = require('../conect/conect');

const CatalogoReparto = sequelize.define('CatalogoReparto', {
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
    idAct: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'actricesyactores',
        key: 'id',
      },
    },
  }, {
    tableName: 'catalogoReparto',
    timestamps: false,
  });
  
  module.exports = CatalogoReparto;