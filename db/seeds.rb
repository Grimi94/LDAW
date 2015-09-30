# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
#
Store.destroy_all
Store.create!([
  {
    name: "Store1",
    city: "Queretaro",
    state: "Queretaro",
    description: "This is a very short description",
    rating: 4.5
  }
])
