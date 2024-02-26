import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('pokemons', {
    pokemon_id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    pokemon_name: {
      type: DataTypes.STRING(50),
      allowNull: false
    },
    pokemon_height: {
      type: DataTypes.REAL,
      allowNull: true
    },
    pokemon_weight: {
      type: DataTypes.REAL,
      allowNull: true
    },
    pokemon_logo: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    evolution_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'evolutions',
        key: 'evolution_id'
      }
    },
    category_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'categories',
        key: 'category_id'
      }
    },
    stat_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'stats',
        key: 'stat_id'
      },
      unique: "pokemons_unique"
    }
  }, {
    sequelize,
    tableName: 'pokemons',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "pokemons_pk",
        unique: true,
        fields: [
          { name: "pokemon_id" },
        ]
      },
      {
        name: "pokemons_unique",
        unique: true,
        fields: [
          { name: "stat_id" },
        ]
      },
    ]
  });
};
