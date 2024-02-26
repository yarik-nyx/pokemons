import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('tokens', {
    token_id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    refresh_token: {
      type: DataTypes.STRING(300),
      allowNull: false
    },
    user_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'users',
        key: 'user_id'
      }
    }
  }, {
    sequelize,
    tableName: 'tokens',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "tokens_pk",
        unique: true,
        fields: [
          { name: "token_id" },
        ]
      },
    ]
  });
};
