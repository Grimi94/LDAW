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
    id: 1,
    name: "Taqueria Arandas",
    city: "Queretaro",
    state: "Queretaro",
    description: "Tacos como nunca los has probado, tenemos de pastor, bisteck, cordero, etc",
    rating: 4.5,
    approved: false
  },
  {
    id:2,
    name: "Maco Cafe",
    city: "Queretaro",
    state: "Queretaro",
    description: "Ofrecemos cafe artesanal y ricos panes hechos a mano, ven a conocernos",
    rating: 4.5,
    approved: false
  },
  {
    id:3,
    name: "Optica San Pablo",
    city: "Queretaro",
    state: "Queretaro",
    description: "Nos dedicamos a cuidar tus ojos",
    rating: 4.5,
    approved: false
  },
  {
    id:4,
    name: "Aguacatosas",
    city: "Queretaro",
    state: "Queretaro",
    description: "Las mejores hamburguesas de Queretaro, si nunca has probado una aguacatosa, no has vivido..",
    rating: 4.5,
    approved: false
  }
  
])
