import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('abilities', {
    ability_id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    ability_name: {
      type: DataTypes.STRING(50),
      allowNull: false
    },
    ability_desc: {
      type: DataTypes.TEXT,
      allowNull: true
    }
  }, {
    sequelize,
    tableName: 'abilities',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "abilities_pk",
        unique: true,
        fields: [
          { name: "ability_id" },
        ]
      },
    ]
  });
};
