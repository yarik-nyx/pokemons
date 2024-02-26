import {DataTypes} from 'sequelize'
import _abilities from "./abilities.js"
import _categories from "./categories.js"
import _evolutions from "./evolutions.js"
import _genders from "./genders.js"
import _pokemons from "./pokemons.js"
import _pokemons_abilities from "./pokemons_abilities.js"
import _pokemons_genders from "./pokemons_genders.js"
import _pokemons_types from "./pokemons_types.js"
import _rating from "./rating.js"
import _stats from "./stats.js"
import _tokens from "./tokens.js"
import _type from "./type.js"
import _users from "./users.js"

function initModels(sequelize) {
  var abilities = _abilities(sequelize, DataTypes);
  var categories = _categories(sequelize, DataTypes);
  var evolutions = _evolutions(sequelize, DataTypes);
  var genders = _genders(sequelize, DataTypes);
  var pokemons = _pokemons(sequelize, DataTypes);
  var pokemons_abilities = _pokemons_abilities(sequelize, DataTypes);
  var pokemons_genders = _pokemons_genders(sequelize, DataTypes);
  var pokemons_types = _pokemons_types(sequelize, DataTypes);
  var rating = _rating(sequelize, DataTypes);
  var stats = _stats(sequelize, DataTypes);
  var tokens = _tokens(sequelize, DataTypes);
  var type = _type(sequelize, DataTypes);
  var users = _users(sequelize, DataTypes);

  pokemons_abilities.belongsTo(abilities, { as: "ability", foreignKey: "ability_id"});
  abilities.hasMany(pokemons_abilities, { as: "pokemons_abilities", foreignKey: "ability_id"});
  pokemons.belongsTo(categories, { as: "category", foreignKey: "category_id"});
  categories.hasMany(pokemons, { as: "pokemons", foreignKey: "category_id"});
  pokemons.belongsTo(evolutions, { as: "evolution", foreignKey: "evolution_id"});
  evolutions.hasMany(pokemons, { as: "pokemons", foreignKey: "evolution_id"});
  pokemons_genders.belongsTo(genders, { as: "gender", foreignKey: "gender_id"});
  genders.hasMany(pokemons_genders, { as: "pokemons_genders", foreignKey: "gender_id"});
  pokemons_abilities.belongsTo(pokemons, { as: "pokemon", foreignKey: "pokemon_id"});
  pokemons.hasMany(pokemons_abilities, { as: "pokemons_abilities", foreignKey: "pokemon_id"});
  pokemons_genders.belongsTo(pokemons, { as: "pokemon", foreignKey: "pokemon_id"});
  pokemons.hasMany(pokemons_genders, { as: "pokemons_genders", foreignKey: "pokemon_id"});
  pokemons_types.belongsTo(pokemons, { as: "pokemon", foreignKey: "pokemon_id"});
  pokemons.hasMany(pokemons_types, { as: "pokemons_types", foreignKey: "pokemon_id"});
  rating.belongsTo(pokemons, { as: "pokemon", foreignKey: "pokemon_id"});
  pokemons.hasMany(rating, { as: "ratings", foreignKey: "pokemon_id"});
  pokemons.belongsTo(stats, { as: "stat", foreignKey: "stat_id"});
  stats.hasOne(pokemons, { as: "pokemon", foreignKey: "stat_id"});
  pokemons_types.belongsTo(type, { as: "type", foreignKey: "type_id"});
  type.hasMany(pokemons_types, { as: "pokemons_types", foreignKey: "type_id"});
  rating.belongsTo(users, { as: "user", foreignKey: "user_id"});
  users.hasMany(rating, { as: "ratings", foreignKey: "user_id"});
  tokens.belongsTo(users, { as: "user", foreignKey: "user_id"});
  users.hasMany(tokens, { as: "tokens", foreignKey: "user_id"});

  return {
    abilities,
    categories,
    evolutions,
    genders,
    pokemons,
    pokemons_abilities,
    pokemons_genders,
    pokemons_types,
    rating,
    stats,
    tokens,
    type,
    users,
  };
}
export {initModels}
export default initModels
