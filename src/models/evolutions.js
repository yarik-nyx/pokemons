import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('evolutions', {
    evolution_id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    stage: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'evolutions',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "evolutions_pk",
        unique: true,
        fields: [
          { name: "evolution_id" },
        ]
      },
    ]
  });
};
