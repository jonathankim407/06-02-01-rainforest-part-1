# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name:           'Nintendo Switch',
  description:    'Game Console',
  price_in_cents:  '200'
)

Product.create(
  name:           'Microsoft Xbox',
  description:    'Game Console',
  price_in_cents:  '500'
)

Product.create(
  name:           'Sony PlayStation',
  description:    'Game Console',
  price_in_cents:  '500'
)

Product.create(
  name:           'Sega Genesis',
  description:    'Game Console',
  price_in_cents:  '5'
)
