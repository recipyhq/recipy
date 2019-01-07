if Rails.env.development?
  Administrator.create! do |admin|
    admin.email = 'admin@recipy.com'
    admin.password = 'password'
    admin.password_confirmation = 'password'
  end
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Viande"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Poisson"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Légume"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Fruit"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Boisson"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Céréale"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Condiment"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Printemps"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "été"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Automne"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Hiver"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Bon marché"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Couteux"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Produit laitier"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Vegetarien"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Vegan"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Epice"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Corps gras"
end
Ingredient.create! do |ingredient|
  ingredient.name = "Boeuf"
  ingredient.description = "viande bovine"
  ingredient.ingredient_tags << IngredientTag.find_by_name("Viande")
end
Ingredient.create! do |ingredient|
  ingredient.name = "Cheddar"
  ingredient.description = "fromage anglais"
  ingredient.ingredient_tags << IngredientTag.find_by_name("Produit laitier")
end
Ingredient.create! do |ingredient|
  ingredient.name = "Colin"
  ingredient.description = "Poissan atlantique"
  ingredient.ingredient_tags << IngredientTag.find_by_name("Poisson")
end
Ingredient.create! do |ingredient|
  ingredient.name = "Pomme"
  ingredient.description = "Fruit d'automne"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Automne"),
  ]
end
Ingredient.create! do |ingredient|
  ingredient.name = "Carotte"
  ingredient.description = "Légume de saison"
  ingredient.ingredient_tags << IngredientTag.find_by_name("Légume")
end
Ingredient.create! do |ingredient|
  ingredient.name = "Jambon"
  ingredient.description = "Partie du porc la plus consommée"
  ingredient.ingredient_tags << IngredientTag.find_by_name("Viande")
end
Ingredient.create! do |ingredient|
  ingredient.name = "Beurre"
  ingredient.description = "Élément indispensable à tout bon gâteau."
  ingredient.ingredient_tags << IngredientTag.find_by_name("Corps gras")
end
Ingredient.create! do |ingredient|
  ingredient.name = "Pain"
  ingredient.description = "Élément indispensable pour de bons sandwichs."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Légume"),
    IngredientTag.find_by_name("Bon marché"),
  ]
end
Utensil.create! do |utensil|
  utensil.title = "Couteau"
end
Utensil.create! do |utensil|
  utensil.title = "Cuillere"
end
Utensil.create! do |utensil|
  utensil.title = "Fourchette"
end
Utensil.create! do |utensil|
  utensil.title = "Saladier"
end
Utensil.create! do |utensil|
  utensil.title = "Mixeur"
end
Utensil.create! do |utensil|
  utensil.title = "Passoire"
end
Utensil.create! do |utensil|
  utensil.title = "Casserole"
end
Utensil.create! do |utensil|
  utensil.title = "Poêle"
end
Utensil.create! do |utensil|
  utensil.title = "Louche"
end
Utensil.create! do |utensil|
  utensil.title = "Spatule"
end
Utensil.create! do |utensil|
  utensil.title = "Ciseaux"
end
Utensil.create! do |utensil|
  utensil.title = "Wok"
end
Utensil.create! do |utensil|
  utensil.title = "Cocotte minute"
end
Utensil.create! do |utensil|
  utensil.title = "Friteuse"
end
Utensil.create! do |utensil|
  utensil.title = "Four"
end
Utensil.create! do |utensil|
  utensil.title = "Micro-onde"
end
Utensil.create! do |utensil|
  utensil.title = "Marmite"
end
Recipe.create! do |recipe|
  recipe.title = "Boeuf carottes"
  recipe.description = "Repas familiale très apprécié en France"
  recipe.step = "Coupez la viande en plusieurs morceaux.
Les faire cuire dans une casserole"
  recipe.time = 30
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Boeuf")
  recipe.ingredients << Ingredient.find_by_name("Carotte")
  recipe.recipe_ingredients[0].quantity = "200 gr"
  recipe.recipe_ingredients[1].quantity = "2 pièces"
  recipe.utensils << Utensil.find_by_title("Marmite")
end
Recipe.create! do |recipe|
  recipe.title = "Sandwich jambon beurre"
  recipe.description = "Le sandwich français par excellence."
  recipe.step = "Prenez une tranche de pain.
Étalez le beurre avec un couteau et disposez le jambon sur le dessus.
Enfin mettez la deuxième tranche de pain au-dessus du jambon."
  recipe.time = 5
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Jambon")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Pain")
  recipe.recipe_ingredients[0].quantity = "4 tranches"
  recipe.recipe_ingredients[1].quantity = "1 noisette"
  recipe.recipe_ingredients[2].quantity = "2 tranches"
  recipe.utensils << Utensil.find_by_title("Couteau")
end
