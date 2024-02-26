import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('pokemons_genders', {
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
    gender_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'genders',
        key: 'gender_id'
      }
    },
    percent: {
      type: DataTypes.REAL,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'pokemons_genders',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "pokemons_genders_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
