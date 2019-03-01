# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "olive")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "yellow lemon")
Ingredient.create(name: "green lemon")

Cocktail.create(name: "Le Matiouzz")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Nespresso on the rocks")
Cocktail.create(name: "Russian milk")
Cocktail.create(name: "B-52")

Dose.create(description: "1cl", cocktail_id: 1, ingredient_id: 2)
Dose.create(description: "1cl", cocktail_id: 1, ingredient_id: 3)
Dose.create(description: "1udm", cocktail_id: 1, ingredient_id: 1)
Dose.create(description: "1udm", cocktail_id: 1, ingredient_id: 4)
Dose.create(description: "2udm", cocktail_id: 1, ingredient_id: 4)
