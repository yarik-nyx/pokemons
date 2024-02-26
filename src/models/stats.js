import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('stats', {
    stat_id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    stat_hp: {
      type: DataTypes.SMALLINT,
      allowNull: false
    },
    stat_attack: {
      type: DataTypes.SMALLINT,
      allowNull: false
    },
    stat_defense: {
      type: DataTypes.SMALLINT,
      allowNull: false
    },
    stat_sp_attack: {
      type: DataTypes.SMALLINT,
      allowNull: false
    },
    stat_sp_defense: {
      type: DataTypes.SMALLINT,
      allowNull: false
    },
    stat_speed: {
      type: DataTypes.SMALLINT,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'stats',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "stats_pk",
        unique: true,
        fields: [
          { name: "stat_id" },
        ]
      },
    ]
  });
};
