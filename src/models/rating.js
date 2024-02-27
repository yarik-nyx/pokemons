import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('rating', {
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
    user_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'users',
        key: 'user_id'
      }
    },
    stars: {
      type: DataTypes.FLOAT,
      allowNull: false
    },
  }, {
    sequelize,
    tableName: 'rating',
    schema: 'public',
    timestamps: true,
    indexes: [
      {
        name: "rating_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
