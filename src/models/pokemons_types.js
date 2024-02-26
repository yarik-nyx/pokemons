import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('pokemons_types', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    pokemon_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'pokemons',
        key: 'pokemon_id'
      }
    },
    type_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'type',
        key: 'type_id'
      }
    }
  }, {
    sequelize,
    tableName: 'pokemons_types',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "pokemons_types_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
