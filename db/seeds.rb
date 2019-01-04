if Rails.env.development?
  ## Administrator.create! do |admin|
  ##  admin.email = 'admin@recipy.com'
  ##  admin.password = 'password'
  ##  admin.password_confirmation = 'password'
  ## end
end
Administrator.create! do |admin|
  admin.email = 'admin@recipy.com'
  admin.password = 'password'
  admin.password_confirmation = 'password'
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Viande"
end
Ingredient.create! do |ingredient|
  ingredient.name = "boeuf"
  ingredient.description = "viande bovine"
  ingredient.ingredient_tags << IngredientTag.first
end
Utensil.create! do |utensil|
  utensil.title = "Couteau"
end
Recipe.create! do |recipe|
  recipe.title = "Boeuf bourguignon"
  recipe.description = "Repas familiale très aprécié en France"
  recipe.step = "Coupez la viande et la cuire"
  recipe.time = 180
  recipe.difficulty = 15
  recipe.ingredients << Ingredient.first
  recipe.utensils << Utensil.first
end
