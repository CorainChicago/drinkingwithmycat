# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ListOfImportance.create(title: "Charlie's Primary List", description: "These are his main objectives for any given day. ")
Item.create([{description: "Being Cute", order: 1, list_of_importance_id: 1},
  {description: "Acting indecisive as his ancestors have done for ages", order: 2, list_of_importance_id: 1},
  {description: "Randomly chase, stalk, and 'kill' bugs, toys, or beams of light", order: 3, list_of_importance_id: 1},
  {description: "Requesting petting, but not too much petting", order: 4, list_of_importance_id: 1}
  ])