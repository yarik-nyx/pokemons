import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('pokemons_abilities', {
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
    ability_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'abilities',
        key: 'ability_id'
      }
    }
  }, {
    sequelize,
    tableName: 'pokemons_abilities',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "pokemons_abilities_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
