import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('genders', {
    gender_id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    gender_name: {
      type: DataTypes.STRING(1),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'genders',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "genders_pk",
        unique: true,
        fields: [
          { name: "gender_id" },
        ]
      },
    ]
  });
};
