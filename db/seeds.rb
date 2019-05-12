if Rails.env.development?
  Administrator.create! do |admin|
    admin.email = 'admin@recipy.com'
    admin.password = 'password'
    admin.password_confirmation = 'password'
  end
end

# Ingredient tags declaration

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
  ingredient_tag.name = "Été"
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
  ingredient_tag.name = "Végétarien"
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

# Quantity Type

QuantityType.create! do |quantity_type|
  quantity_type.name = "Tranche(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Pièce(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Cuillière(s) à soupe"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Cuillière(s) à café"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Tranche(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Non défini"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Pincée(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Gramme(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Kilogramme(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Litre(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Millilitre(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Pot(s) de yaourt"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Noisette(s)"
end

# Quantity Equivalencies

# For Semoule ingredient
QuantityEquivalency.create! do |quantity_equivalency|
  quantity_equivalency.gram_equivalency = 12
  quantity_equivalency.quantity_type = QuantityType.find_by_name("Cuillière(s) à soupe")
end

QuantityEquivalency.create! do |quantity_equivalency|
  quantity_equivalency.gram_equivalency = 140
  quantity_equivalency.quantity_type = QuantityType.find_by_name("Pot(s) de yaourt")
end

# For Beurre ingredient
QuantityEquivalency.create! do |quantity_equivalency|
  quantity_equivalency.gram_equivalency = 3
  quantity_equivalency.quantity_type = QuantityType.find_by_name("Noisette(s)")
end

# For Jambon ingredient
QuantityEquivalency.create! do |quantity_equivalency|
  quantity_equivalency.gram_equivalency = 50
  quantity_equivalency.quantity_type = QuantityType.find_by_name("Tranche(s)")
end

# For Tomate ingredient
QuantityEquivalency.create! do |quantity_equivalency|
  quantity_equivalency.gram_equivalency = 100
  quantity_equivalency.quantity_type = QuantityType.find_by_name("Pièce(s)")
end

# For Sel ingredient
QuantityEquivalency.create! do |quantity_equivalency|
  quantity_equivalency.gram_equivalency = 1
  quantity_equivalency.quantity_type = QuantityType.find_by_name("Pincée(s)")
end

# For Poivre ingredient
QuantityEquivalency.create! do |quantity_equivalency|
  quantity_equivalency.gram_equivalency = 1
  quantity_equivalency.quantity_type = QuantityType.find_by_name("Pincée(s)")
end

# Ingredients declaration

# Ingredients (sandwich jambon beurre) declaration

Ingredient.create! do |ingredient|
  ingredient.name = "Jambon"
  ingredient.confirmed = true
  ingredient.description = "Viande de porc coupé en tranches."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.quantity_equivalencies << [
    QuantityEquivalency.find(4),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Beurre"
  ingredient.confirmed = true
  ingredient.description = "Corps gras utile pour la cuisson et la garniture"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Corps gras"),
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.quantity_equivalencies << [
    QuantityEquivalency.find(4),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Baguette de pain"
  ingredient.confirmed = true
  ingredient.description = "Base de la boulangerie française"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Végétarien"),
  ]
end

# Ingredients (Tomates farcies)

Ingredient.create! do |ingredient|
  ingredient.name = "Tomate"
  ingredient.confirmed = true
  ingredient.description = "Fruit rouge typique des pays du sud."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Été"),
    IngredientTag.find_by_name("Fruit"),
  ]
  ingredient.quantity_equivalencies << [
    QuantityEquivalency.find(5),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Chair à saucisse"
  ingredient.confirmed = true
  ingredient.description = "viande de porc hachée"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.quantity_equivalencies << []
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sel"
  ingredient.confirmed = true
  ingredient.description = "Condiment pour asaisonner"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.quantity_equivalencies << [
    QuantityEquivalency.find(6),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Poivre"
  ingredient.confirmed = true
  ingredient.description = "Condiment pour asaisonner"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.quantity_equivalencies << [
    QuantityEquivalency.find(7),
  ]
end

# Utensils

Utensil.create! do |utensil|
  utensil.title = "Couteau"
end
Utensil.create! do |utensil|
  utensil.title = "Cuillère"
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

# Recipe Categories

RecipeCategory.create! do |category|
  category.name = "Entrée"
end

RecipeCategory.create! do |category|
  category.name = "Plat"
end

RecipeCategory.create! do |category|
  category.name = "Dessert"
end

RecipeCategory.create! do |category|
  category.name = "Boisson"
end

RecipeCategory.create! do |category|
  category.name = "Autres"
end

RecipeCategory.create! do |category|
  category.name = "Apéritif"
end

# Recipes

Recipe.create! do |recipe|
  recipe.title = "Sandwich jambon beurre"
  recipe.description = "Le sandwich français par excellence."
  # recipe.user_id = nil
  # recipe.user = nil
  recipe.steps = [
    "Coupez la baguette en deux dans le sens de l'horizontale",
    "Étalez le beurre sur l'un des deux côté",
    "Mettez le jambon sur la partie inférieure du sandwich",
    "Fermez le sandwich. Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/jambon_beurre.jpeg'),
                      filename: 'jambon_beurre.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 0
  recipe.preparation_time = 5
  recipe.person = 1
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Jambon")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Baguette de pain")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Noisette(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Tomates farcies"
  recipe.description = "Plat très bon marché et savoureux."
  recipe.steps = [
    "Creusez les tomates avec une cuillère.",
    "Mélangez la viande avec le sel et le poivre",
    "Faites des boules avec la viande. Placez-les dans les tomates creusées",
    "Cuisez les au four pendant 1 heure à 180°C.",
    "Servez chaud. Bon appétit !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tomates_farcies.jpg'),
                      filename: 'tomates_farcies.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 60
  recipe.preparation_time = 15
  recipe.person = 2
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Chair à saucisse")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Four")
end
