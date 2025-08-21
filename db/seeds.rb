# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# db/seeds.rb


pancakes   = Recipe.create!(title: "Fluffy Pancakes")
spaghetti  = Recipe.create!(title: "Spaghetti Bolognese")
salad      = Recipe.create!(title: "Greek Salad")
cookies    = Recipe.create!(title: "Chocolate Chip Cookies")


Ingredient.create!([
  { name: "Flour", quantity: "2 cups", recipe: pancakes },
  { name: "Milk", quantity: "1.5 cups", recipe: pancakes },
  { name: "Eggs", quantity: "2", recipe: pancakes },
  { name: "Sugar", quantity: "2 tbsp", recipe: pancakes },
  { name: "Baking Powder", quantity: "2 tsp", recipe: pancakes }
])


Ingredient.create!([
  { name: "Spaghetti Pasta", quantity: "200g", recipe: spaghetti },
  { name: "Ground Beef", quantity: "250g", recipe: spaghetti },
  { name: "Tomato Sauce", quantity: "1 cup", recipe: spaghetti },
  { name: "Onion", quantity: "1, diced", recipe: spaghetti },
  { name: "Garlic", quantity: "2 cloves", recipe: spaghetti }
])


Ingredient.create!([
  { name: "Cucumber", quantity: "1, chopped", recipe: salad },
  { name: "Tomatoes", quantity: "2, diced", recipe: salad },
  { name: "Feta Cheese", quantity: "1/2 cup, crumbled", recipe: salad },
  { name: "Olives", quantity: "1/3 cup", recipe: salad },
  { name: "Olive Oil", quantity: "2 tbsp", recipe: salad }
])


Ingredient.create!([
  { name: "Flour", quantity: "2 1/4 cups", recipe: cookies },
  { name: "Butter", quantity: "1 cup (softened)", recipe: cookies },
  { name: "Brown Sugar", quantity: "3/4 cup", recipe: cookies },
  { name: "White Sugar", quantity: "3/4 cup", recipe: cookies },
  { name: "Chocolate Chips", quantity: "2 cups", recipe: cookies }
])

puts "Seeded #{Recipe.count} recipes and #{Ingredient.count} ingredients."
