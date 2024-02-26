import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('type', {
    type_id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    type_name: {
      type: DataTypes.STRING(30),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'type',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "type_pk",
        unique: true,
        fields: [
          { name: "type_id" },
        ]
      },
    ]
  });
};
