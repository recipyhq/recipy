# rubocop:disable all
if Rails.env.development?

  Administrator.destroy_all

  Administrator.create! do |admin|
    admin.email = 'admin@recipy.com'
    admin.password = 'password'
    admin.password_confirmation = 'password'
  end
end

ProductTag.destroy_all

ProductTag.create! do |tag|
  tag.name = "Bio"
end

ProductTag.create! do |tag|
  tag.name = "Sans_pesticide"
end

# Diets declaration

Diet.create! do |diet|
  diet.name = "Végétarien"
  diet.description = "Absence de viande, poisson et crustacés"
end

Diet.create! do |diet|
  diet.name = "Vegan"
  diet.description = "Absence de viande, poisson, crustacés, produits laitiers, oeufs et miel"
end

# Ingredient tags declaration

IngredientTag.destroy_all

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
  ingredient_tag.name = "Coûteux"
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
  ingredient_tag.name = "Épice"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Corps gras"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Féculent"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Crustacé"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Herbe"
end
IngredientTag.create! do |ingredient_tag|
  ingredient_tag.name = "Épicerie"
end

# Allergen Tag

AllergenTag.destroy_all

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Arachides"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Crustaces"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Gluten"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Soja"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Lactose"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Fruits_a_coque"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Oeuf"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Celeri"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Graines_de_sesame"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Moutarde"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Anhydride_sulfureux"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Mollusques"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Lupin"
end

AllergenTag.create! do |allergen_tag|
  allergen_tag.name = "Poissons"
end



# Quantity Type

QuantityType.destroy_all

QuantityType.create! do |quantity_type|
  quantity_type.name = "Tranche(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Botte(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Pièce(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Cuillère(s) à soupe"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Cuillère(s) à café"
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
  quantity_type.name = "Centilitre(s)"
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

QuantityType.create! do |quantity_type|
  quantity_type.name = "Brin(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Feuille(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Sachet(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Conserve(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Verre(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Noix"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Boule(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Pincée(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Petite(s) Boîte(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Brique(s)"
end

QuantityType.create! do |quantity_type|
  quantity_type.name = "Quartier(s)"
end

# Ingredients declaration

# Ingredients (sandwich jambon beurre) declaration

Ingredient.destroy_all

Ingredient.create! do |ingredient|
  ingredient.name = "Jambon blanc"
  ingredient.confirmed = true
  ingredient.description = "Viande de porc coupé en tranches."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.shelf_tag = "Viandes"
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
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
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
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Boulangerie"
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
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Chair à saucisse"
  ingredient.confirmed = true
  ingredient.description = "viande de porc hachée"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sel"
  ingredient.confirmed = true
  ingredient.description = "Condiment pour asaisonner"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Poivre"
  ingredient.confirmed = true
  ingredient.description = "Condiment pour asaisonner"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Bon marché"),
  ]

  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Poivre blanc"
  ingredient.confirmed = true
  ingredient.description = "Condiment pour asaisonner"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Avocat"
  ingredient.confirmed = true
  ingredient.description = "Fruit issu de l'avocatier. Provenant du Mexique."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Été"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Citron"
  ingredient.confirmed = true
  ingredient.description = "Agrume estival très acide"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Été"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cumin en poudre"
  ingredient.confirmed = true
  ingredient.description = "Épice du Proche-Orient de la même famille que le persil."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Épice"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Ail en poudre"
  ingredient.confirmed = true
  ingredient.description = "Condiment très utilisé en cuisine au multiples bienfaits"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Paprika en poudre"
  ingredient.confirmed = true
  ingredient.description = "Appelé aussi piment doux. C'est une épice de couleur rouge d'origine hongroise"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Épice"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Piment de Cayenne en poudre"
  ingredient.confirmed = true
  ingredient.description = "Piment particulièrement piquant."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Épice"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Tabasco"
  ingredient.confirmed = true
  ingredient.description = "Sauce pimentée faite à base de piments rouges, vianigre et sel."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Spaghetti"
  ingredient.confirmed = true
  ingredient.description = "Pate longue et fine, idéale pour les plats en sauce."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Féculent"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Oeuf"),
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Oeuf"
  ingredient.confirmed = true
  ingredient.description = "Riche source de protéïne, il est un aliment de base pour préparer de bons gâteaux."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Parmesan"
  ingredient.confirmed = true
  ingredient.description = "D'origine italienne, il s'accomode parfaitement avec n'importe quel plat de pâtes."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Coûteux"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Lardons"
  ingredient.confirmed = true
  ingredient.description = "Produit à base de porc"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Huile d'olive extra vierge"
  ingredient.confirmed = true
  ingredient.description = "Corps gras utlisé pour les salades et les assaisonnements."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Corps gras"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

# Ingredients for Ceasar salad

Ingredient.create! do |ingredient|
  ingredient.name = "Laitue iceberg"
  ingredient.confirmed = true
  ingredient.description = "C'est un type de salade réputé par sa fraîcheur. Elle a des feuilles très claires et très croquantes"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Légume"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Blanc de poulet"
  ingredient.confirmed = true
  ingredient.description = "Partie la plus tendre du poulet et ingrédient de base dans de nombreux pas."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pain de mie"
  ingredient.confirmed = true
  ingredient.description = "Pain à la mie très blanche caractérisé par l'absence de croûte croustillante"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Féculent"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Boulangerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Huile d'olive"
  ingredient.confirmed = true
  ingredient.description = "Matière grasse extraite des olives.
Fondement de la cuisine méditéranéenne et peut-être bénéfique pour la santé"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Corps gras"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Huile"
  ingredient.confirmed = true
  ingredient.description = "Matière grasse. Peut-être bénéfique pour la santé"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Corps gras"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Huile végétale"
  ingredient.confirmed = true
  ingredient.description = "Matière grasse extraite de plantes diverses. "
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Corps gras"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Lait"
  ingredient.confirmed = true
  ingredient.description = "Produit de base pour tous types de gâteaux."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Produits laitiers"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Mayonnaise"
  ingredient.confirmed = true
  ingredient.description = "Sause froide à base d'huile émulsionnée dans un mélange de jaune d'oeuf et jus de citron."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Corps gras"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Jus de citron"
  ingredient.confirmed = true
  ingredient.description = "Jus extrait d'un citron."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Corps gras"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Moutarde de Dijon"
  ingredient.confirmed = true
  ingredient.description = "Sauce piquante et spécialité de la ville de Dijon"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Moutarde"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Gousse d'ail"
  ingredient.confirmed = true
  ingredient.description = "Condiment très utilisé en cuisine au multiples bienfaits"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Légumes"
end

# Ingredients for Quiche au saumon
Ingredient.create! do |ingredient|
  ingredient.name = "Pâte brisée"
  ingredient.confirmed = true
  ingredient.description = "Élément de base pour tous types de tartes et de gâteaux"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Produit laitier")
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
    AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = ""
end

Ingredient.create! do |ingredient|
  ingredient.name = "Saumon"
  ingredient.confirmed = true
  ingredient.description = "Poisson gras riche en oméga 3"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Poisson"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Poissons"),
  ]
  ingredient.shelf_tag = "Poissons"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Crème fraîche"
  ingredient.confirmed = true
  ingredient.description = "La crème fraîche est une crème non stérilisée, maturée ou laissée en l'état."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Produit laitier"),
    IngredientTag.find_by_name("Corps gras"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Amande effilée"
  ingredient.confirmed = true
  ingredient.description = "Fruit sec aux vertus diverses."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Amande"
  ingredient.confirmed = true
  ingredient.description = "Fruit sec riche en bon gras."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Gruyère"
  ingredient.confirmed = true
  ingredient.description = "Le gruyère est un fromage suisse qui tire son nom de la Gruyère"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

# Ingredients for Avocat crevettes

Ingredient.create! do |ingredient|
  ingredient.name = "Surimi"
  ingredient.confirmed = true
  ingredient.description = "Aliment fait à base de poisson idéal en apéritif"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Poisson"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Poissons"),
    AllergenTag.find_by_name("Crustaces"),
    AllergenTag.find_by_name("Gluten"),
    AllergenTag.find_by_name("Mollusques"),
    AllergenTag.find_by_name("Celeri")
  ]
  ingredient.shelf_tag = "Poissons"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Crevette"
  ingredient.confirmed = true
  ingredient.description = "Crustacé très commun"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Crustacé"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Crustaces"),
  ]
  ingredient.shelf_tag = "Poissons"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Ciboulette"
  ingredient.confirmed = true
  ingredient.description = "Herbe très savoureuse pour accompagner du poisson"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Herbe"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.shelf_tag = "Herbes"
end

# Ingredinets for Melon & Jambon cru

Ingredient.create! do |ingredient|
  ingredient.name = "Melon"
  ingredient.confirmed = true
  ingredient.description = "Fruit exotique très sucré et frais"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Été"),
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Jambon cru"
  ingredient.confirmed = true
  ingredient.description = "Aliment spécialité du Sud-Ouest et élément indispensable à la charcuterie."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end


Ingredient.create! do |ingredient|
  ingredient.name = "Sucre en morceaux"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

# Ingredints for Mousse au chocolat
Ingredient.create! do |ingredient|
  ingredient.name = "Chocolat noir"
  ingredient.confirmed = true
  ingredient.description = "Il contentient entre 43% et 100% de cacao. Il est la base de la patisserie. "
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Jaune d'oeuf"
  ingredient.confirmed = true
  ingredient.description = "C'est l'élément central de l'oeuf. Il est très riche en protéïnes."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Oeufs"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Blanc d'oeuf"
  ingredient.confirmed = true
  ingredient.description = "Base dans la patisserie. Il est utile dans beaucoup de plats."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Oeufs"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sucre en poudre"
  ingredient.confirmed = true
  ingredient.description = "Il est extrait de la betterave et est un dispensable dan sla patiseerie"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Gousse de vanille"
  ingredient.confirmed = true
  ingredient.description = "Extrait de la vanille. Il peut apporter beaucoup de goût dans une recette."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Coûteux"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

# Ingredients for salade de fruits

Ingredient.create! do |ingredient|
  ingredient.name = "Pomme"
  ingredient.confirmed = true
  ingredient.description = "Fruit d'automne, idéal en compote ou pour manger cru."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Automne"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Banane"
  ingredient.confirmed = true
  ingredient.description = "Fruit exotique jaune."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Hiver"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Orange"
  ingredient.confirmed = true
  ingredient.description = "Agrume acide et de couleur orange"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pamplemousse"
  ingredient.confirmed = true
  ingredient.description = "Agrume très amer"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Kiwi"
  ingredient.confirmed = true
  ingredient.description = "Fruit exotique originaire de Chine. Il possède une pulpe généralement verte."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Raisin noir"
  ingredient.confirmed = true
  ingredient.description = "Petit fruit très sucré de couleur noire. Utilisé dans la préparation u vin ou de jus."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Fruits"
end

# Ingredients for crêpes

Ingredient.create! do |ingredient|
  ingredient.name = "Farine"
  ingredient.confirmed = true
  ingredient.description = "Poudre etraite du blé. Elle est la base de la patisserie et de la boulangerie."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Extrait de vanille"
  ingredient.confirmed = true
  ingredient.description = "Liquide extrait de la vanille. Il est très sucré et possède un goût très fort"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

# Ingredients for Mayonnaise

Ingredient.create! do |ingredient|
  ingredient.name = "Huile de tournesol"
  ingredient.confirmed = true
  ingredient.description = "Liquide extrait de la vanille. Il est très sucré et possède un goût très fort"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Corps gras"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

#Ingredients for Salade d'avocat

Ingredient.create! do |ingredient|
  ingredient.name = "Feta"
  ingredient.confirmed = true
  ingredient.description = "Fromage de brebis très populaire en Grêce. Il est très frais et s'accommode dans tous types de salade."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pignons de pin"
  ingredient.confirmed = true
  ingredient.description = "Graine issue du pin. Permet d'ajouter du croquant dans une recette, une fois torrifier."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Olives noires"
  ingredient.confirmed = true
  ingredient.description = "Produit typiquement méditerranéen, l’olive noire est le fruit de l’olivier cueilli à complète maturité"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Fruit"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Vinaigre balsamique"
  ingredient.confirmed = true
  ingredient.description = "Vinaigre doux idéal pour accompagner différentes salades."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Ketchup"
  ingredient.confirmed = true
  ingredient.description = "Sauce à base de tomates avec une note légèrement sucrée."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Celeri"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sauce soja"
  ingredient.confirmed = true
  ingredient.description = "Base de la cuisine asiatique."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Soja"),
    AllergenTag.find_by_name("Lupin")
  ]
  ingredient.shelf_tag = "Epicerie"
end

# Ingredients for POulet au curry

Ingredient.create! do |ingredient|
  ingredient.name = "Curry en poudre"
  ingredient.confirmed = true
  ingredient.description = "C'est une épice très savoureuse de couleur jaune et base de la cuisine indienne."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Épice"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Persil"
  ingredient.confirmed = true
  ingredient.description = "Herbe aromatique très classique dans la cuisine."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Oignon jaune"
  ingredient.confirmed = true
  ingredient.description = "Condiment de base dans la cuisine."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Légumes"
end

# Ingredient for palmier au basilic

Ingredient.create! do |ingredient|
  ingredient.name = "Pâte feuilletée"
  ingredient.confirmed = true
  ingredient.description = "Base dans les tartes et les amuse-bouches."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
    AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Basilic"
  ingredient.confirmed = true
  ingredient.description = "Herbe très utilisée dans les plats du Sud."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Herbe"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Fleur de sel"
  ingredient.confirmed = true
  ingredient.description = "Condiment très utilisé dans la finition d'un plat."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

# Ingredients for Welsh

Ingredient.create! do |ingredient|
  ingredient.name = "Pain de campagne"
  ingredient.confirmed = true
  ingredient.description = "Pain ressemblant beaucoup aux pains fabriqués au Moyen-Âge."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Boulangerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cheddar"
  ingredient.confirmed = true
  ingredient.description = "Spécialité fromgère anglaise. Fait à base de lait de vache."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Escalope de poulet"
  ingredient.confirmed = true
  ingredient.description = "Extrait dans les blancs de poulet."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Chapelure"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Bière brune"
  ingredient.confirmed = true
  ingredient.description = "Spécialité belge"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Boisson"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Alcools"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Glace vanille"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
      AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Surgelé"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Glace au chocolat"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
      AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Surgelé"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Glace à la fraise"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Surgelé"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sauce Worcestershire"
  ingredient.confirmed = true
  ingredient.description = "Sauce anglaise à base de poisson."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Poissons"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

# Ingredient for ratatouille

Ingredient.create! do |ingredient|
  ingredient.name = "Courgette"
  ingredient.confirmed = true
  ingredient.description = "Légume d'été vert."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Légume"),
    IngredientTag.find_by_name("Été"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Aubergine"
  ingredient.confirmed = true
  ingredient.description = "Légume violet d'été"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Légume"),
    IngredientTag.find_by_name("Été"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Poivron vert"
  ingredient.confirmed = true
  ingredient.description = "Légume d'été vert au goût amer"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Légume"),
    IngredientTag.find_by_name("Été"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Poivron rouge"
  ingredient.confirmed = true
  ingredient.description = "Légume d'été rouge au goût amer."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Légume"),
    IngredientTag.find_by_name("Été"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Oignon"
  ingredient.confirmed = true
  ingredient.description = "Condiment qui est la base de la cuisine."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Été"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Bouquet garni"
  ingredient.confirmed = true
  ingredient.description = "Ensemble d'herbe afin de donner beaucoup de goût à un jus ou un plat."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Herbe"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Concombre"
  ingredient.confirmed = true
  ingredient.description = "légume"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumineuses"
end

# Ingredients for steaks végétaux

Ingredient.create! do |ingredient|
  ingredient.name = "Lentilles"
  ingredient.confirmed = true
  ingredient.description = "Légume de base dans la cuisine vegan."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Légume"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lupin"),
  ]
  ingredient.shelf_tag = "Légumineuses"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Carotte"
  ingredient.confirmed = true
  ingredient.description = "Légume orange d'hiver."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Légume"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Hiver"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Maïzena"
  ingredient.confirmed = true
  ingredient.description = "Farine de maïs."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Penne"
  ingredient.confirmed = true
  ingredient.description = "Pâte idéale pour les plat en sauce"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Féculent"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Filet d'anchois"
  ingredient.confirmed = true
  ingredient.description = "Met très bon surtout sur un bonne pizza"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Poisson"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Poissons"),
  ]
  ingredient.shelf_tag = "Poissons"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Olive verte dénoyautée"
  ingredient.confirmed = true
  ingredient.description = "Fruit au goût doux, utilisé pour la conception d'huiles"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end


Ingredient.create! do |ingredient|
  ingredient.name = "Olive noire dénoyautée"
  ingredient.confirmed = true
  ingredient.description = "Fruit au goût prononcé, utilisé pour les salades"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Fromage de chèvre frais"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Origan"
  ingredient.confirmed = true
  ingredient.description = "Herbe très bonne sur une pizza ou au barbecue"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Herbe"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Mozzarella"
  ingredient.confirmed = true
  ingredient.description = "Fromage italien très frais et savoureux. Très bon sur une pizza ou avec des pâtes. "
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
    IngredientTag.find_by_name("Coûteux"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Herbes de Provence"
  ingredient.confirmed = true
  ingredient.description = "Mélange d'herbes donnant beaucoup de goût aux plats."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Herbe"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Muscade"
  ingredient.confirmed = true
  ingredient.description = "Épice en poudre donnant beaucoup de goût à divers plats"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Épice"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Fruits_a_coque"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pomme de terre"
  ingredient.confirmed = true
  ingredient.description = "Épice en poudre donnant beaucoup de goût à divers plats"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Épice"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Escalope de veau"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Jambon de Parme"
  ingredient.confirmed = true
  ingredient.description = "Jambon italien très bon et qui s'accorde avec de nombreux plats."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Brioche"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Oeuf"),
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Crème"
  ingredient.confirmed = true
  ingredient.description = "Element de base dans la patisserie."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Miel liquide"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pain d'épices"
  ingredient.confirmed = true
  ingredient.description = "Le pain d'épices est un gâteau au miel parfumé aux épices. Il ravive des souvenirs d'enfance d'un gâteau moelleux, léger et si parfumé... "
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Coûteux"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
      AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cassonade"
  ingredient.confirmed = true
  ingredient.description = "sucre roux"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pâte brisée sucrée"
  ingredient.confirmed = true
  ingredient.description = "Ingrédient indispensable pour la réalisation de tartes"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
      AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Crème liquide"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Noix de pécan"
  ingredient.confirmed = true
  ingredient.description = "Fruit sec très utilisé en patisserie."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
    AllergenTag.find_by_name("Fruits_a_coque"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Levure"
  ingredient.confirmed = true
  ingredient.description = "Elément essentiel dans la boulangerie et la patisserie"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Boulangerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Gruyère rapé"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Boeuf haché"
  ingredient.confirmed = true
  ingredient.description = "Viande de boeuf hachée"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Miel"
  ingredient.confirmed = true
  ingredient.description = "Extrait des ruches des abeilles, il est inpérissable !"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Magret de canard"
  ingredient.confirmed = true
  ingredient.description = "Meilleur morceau du canard, reconnu pour sa tendresse et son goût"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cuisse de poulet"
  ingredient.confirmed = true
  ingredient.description = "Morceau de poulet situé au niveau des pattes"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Épices pour tajine"
  ingredient.confirmed = true
  ingredient.description = "Mix d'épices idéale pour la tajine."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Épice"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Eau"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Escargot"
  ingredient.confirmed = true
  ingredient.description = "Ingrédient typiquement français."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Crustacé"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Échalote"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Calamars surgelés"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Poisson"),
  ]
  ingredient.shelf_tag = "Poissons"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Chorizo"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pâte à pizza"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
      AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Tomate confite"
  ingredient.confirmed = true
  ingredient.description = "Tomate trempée dans de l'huile d'olive afin d'améliorerle goût."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Châtaigne"
  ingredient.confirmed = true
  ingredient.description = "Fruit sec d'automne très apprécié quand il fait froid dehors "
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
      AllergenTag.find_by_name("Fruits_a_coque"),
  ]
  ingredient.shelf_tag = "Produits secs"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cube de bouillon de volaille"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Bouillon de volaille"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Lait entier"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Lard fumé"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Beurre salé"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Crème chantilly"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Ail"
  ingredient.confirmed = true
  ingredient.description = "légume"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumineuses"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Menthe"
  ingredient.confirmed = true
  ingredient.description = "herbe"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumineuses"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Coriandre"
  ingredient.confirmed = true
  ingredient.description = "herbe"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumineuses"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Yaourt"
  ingredient.confirmed = true
  ingredient.description = "yaourt"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Produits laitiers"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Vermicel"
  ingredient.confirmed = true
  ingredient.description = "Vermicelle"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Légumineuses"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Vinaigre de Xérès"
  ingredient.confirmed = true
  ingredient.description = "Vinaigre"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Oeuf dur"
  ingredient.confirmed = true
  ingredient.description = "oeuf"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Oeufs"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Piment"
  ingredient.confirmed = true
  ingredient.description = "piment"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Poulet"
  ingredient.confirmed = true
  ingredient.description = "Poulet"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Rôti de porc"
  ingredient.confirmed = true
  ingredient.description = "rôti de porc"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Concentré de tomate"
  ingredient.confirmed = true
  ingredient.description = "tomate"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cube de bouillon"
  ingredient.confirmed = true
  ingredient.description = "bouillon"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Piment d'Espelette"
  ingredient.confirmed = true
  ingredient.description = "Piment"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Épicerie"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Origan séché"
  ingredient.confirmed = true
  ingredient.description = "Origan"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Herbe"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Soupe d'olive"
  ingredient.confirmed = true
  ingredient.description = "Soupe d'olive"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumineuses"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Haricot rouge"
  ingredient.confirmed = true
  ingredient.description = "Haricot"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Produits secs"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Chocolat blanc"
  ingredient.confirmed = true
  ingredient.description = "Chocolat"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Chocolat au lait"
  ingredient.confirmed = true
  ingredient.description = "Chocolat au lait"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
    AllergenTag.find_by_name("Soja"),
    AllergenTag.find_by_name("Gluten"),
    AllergenTag.find_by_name("Fruits_a_coque"),
  ]
  ingredient.shelf_tag = "Produits laitiers"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Gouda"
  ingredient.confirmed = true
  ingredient.description = "Fromage"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Produits laitiers"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Bacon"
  ingredient.confirmed = true
  ingredient.description = "Bacon"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Fraise"
  ingredient.confirmed = true
  ingredient.description = "Fruit d'été"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Tortilla"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien")
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Oignon blanc"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumineuses"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Coulis de tomate"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Galette de riz"
  ingredient.confirmed = true
  ingredient.description = "Galette à base de riz"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Vermicelles de riz"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Porc"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pâte levée"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
      AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Saumon fumé"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Poisson"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Poissons"),
  ]
  ingredient.shelf_tag = "Poissons"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Fromage frais"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Reblochon"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Carpaccio de boeuf"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Maasdam"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sauce Yakitori"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Anhydride_sulfureux"),
    AllergenTag.find_by_name("Soja"),
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Crêpe au Sarrasin"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
      AllergenTag.find_by_name("Oeuf"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Laitue"
  ingredient.confirmed = true
  ingredient.description = "C'est un type de salade réputé par sa fraîcheur. Elle a des feuilles très claires et très croquantes"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Légume"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Maroilles"
  ingredient.confirmed = true
  ingredient.description = "Fromage typiquement du Nord de la France."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sucre vanillé"
  ingredient.confirmed = true
  ingredient.description = "Sucre qui a légèrement un goût vanillé"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cerise"
  ingredient.confirmed = true
  ingredient.description = "Fruit rouge"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Huile de friture"
  ingredient.confirmed = true
  ingredient.description = "Utilisé pour faire des plats fris"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Corps gras"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Levure chimique"
  ingredient.confirmed = true
  ingredient.description = "Utilisé principalement pour les gâteaux"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Potiron"
  ingredient.confirmed = true
  ingredient.description = "Courge orange d'automne"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan")
  ]
end

Ingredient.create! do  |ingredient|
  ingredient.name = "Oignon rouge"
  ingredient.confirmed = true
  ingredient.description = "Condiment basique"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do  |ingredient|
  ingredient.name = "Pois chiche"
  ingredient.confirmed = true
  ingredient.description = "Légumineuse riche en fibres et protéines"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien")
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lupin"),
    AllergenTag.find_by_name("Arachides"),
  ]
  ingredient.shelf_tag = "Légumineuses"
end

Ingredient.create! do  |ingredient|
  ingredient.name = "Protéines de soja texturées"
  ingredient.confirmed = true
  ingredient.description = "Soja sous forme désydrathé"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien")
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Soja"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sauce barbecue"
  ingredient.confirmed = true
  ingredient.description = "Sauce sucrée"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Moutarde"),
    AllergenTag.find_by_name("Celeri"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Tomates concassées"
  ingredient.confirmed = true
  ingredient.description = "Tomates en conserve idéal pour les sauces"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Végétarien")
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Tomates séchées"
  ingredient.confirmed = true
  ingredient.description = "Tomates séchées dans leur huile"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Végétarien")
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Paprika fumé en poudre"
  ingredient.confirmed = true
  ingredient.description = "Papriké plus salé que l'original"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Épice"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cannelle"
  ingredient.confirmed = true
  ingredient.description = "Epice orientale très odorante"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Épice"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Flocons d'avoine"
  ingredient.confirmed = true
  ingredient.description = "Avoine sous forme de flocons"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Céréale"),
    IngredientTag.find_by_name("Bon marché"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Céréales"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Noix de cajou"
  ingredient.confirmed = true
  ingredient.description = "Fruit sec riche en bon gras."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sirop d'agave"
  ingredient.confirmed = true
  ingredient.description = "Sirop idéal pour les pancakes"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Dattes"
  ingredient.confirmed = true
  ingredient.description = "Fruit très énergétique"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan")
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Margarine"
  ingredient.confirmed = true
  ingredient.description = "Alternative au beurre"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan")
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
    AllergenTag.find_by_name("Fruits_a_coque"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sucre de canne"
  ingredient.confirmed = true
  ingredient.description = "Indispensable dans la patisserie"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cacahuètes"
  ingredient.confirmed = true
  ingredient.description = "Habituellement utilisé en guise d'apéritif"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
    AllergenTag.find_by_name("Fruits_a_coque")
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Lait d'amande"
  ingredient.confirmed = true
  ingredient.description = "Lait végétal"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
    AllergenTag.find_by_name("Fruits_a_coque")
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cornflakes"
  ingredient.confirmed = true
  ingredient.description = "Céréales de petit déjeuner"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Soja"),
    AllergenTag.find_by_name("Fruits_a_coque"),
    AllergenTag.find_by_name("Lupin"),
    AllergenTag.find_by_name("Graines_de_sesame"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Beurre de cacahuètes"
  ingredient.confirmed = true
  ingredient.description = "Pâte sucrée salée"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
    AllergenTag.find_by_name("Fruits_a_coque"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Champignon"
  ingredient.confirmed = true
  ingredient.description = "Idéal en salade ou sur des pizzas"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien")
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Purée d'amandes blanches"
  ingredient.confirmed = true
  ingredient.description = "Sert à la cuisine végétale"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
    AllergenTag.find_by_name("Fruits_a_coque"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Farine de froment"
  ingredient.confirmed = true
  ingredient.description = "Farine riche en gluten qui peut provoquer des grumeaux si mal mélanger."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Epicerie"
end


Ingredient.create! do |ingredient|
  ingredient.name = "Sucre"
  ingredient.confirmed = true
  ingredient.description = "Du sucre en grain très fin"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Tête et arêtes d'un saumon"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Poissons"),
  ]
  ingredient.shelf_tag = "Epicerie"

end
Ingredient.create! do |ingredient|
  ingredient.name = "Quatre-épices"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Aneth"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Laurier"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Herbe"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Filet de saumon sauvage"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Poisson"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Poissons"),
  ]
  ingredient.shelf_tag = "Poissons"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pomme de terre ferme"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Féculent"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Crème entière"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cordon bleu"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Frites"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Surgelé"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Bouillon de boeuf"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Patate douce"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Crème semi-épaisse"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Thon"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Poisson"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Poissons"),
  ]
  ingredient.shelf_tag = "Poissons"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pêche"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Crème fraîche épaisse"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Thym"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Herbe"),
  ]
  ingredient.shelf_tag = "Herbes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Ratatouille"
  ingredient.confirmed = true
  ingredient.description = "Mélange de divers légumes du Soleil comme la tomate, la cougette ou encore l'aubergine."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Gruyère râpé"
  ingredient.confirmed = true
  ingredient.description = "Fromage suisse râpé, s'accomode avec des pâtes ou sur une pizza"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Riz"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Féculent"),
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Germe de soja"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pousse d'épinard"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Noix de coco"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Fruits"
end


Ingredient.create! do |ingredient|
  ingredient.name = "Steak de boeuf"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end


Ingredient.create! do |ingredient|
  ingredient.name = "Sucre roux"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Huile de sésame"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Caramel"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Poudre d'amande"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Arachides"),
    AllergenTag.find_by_name("Fruits_a_coque"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Canelle"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
  ingredient.shelf_tag = "Epicerie"
end


Ingredient.create! do |ingredient|
  ingredient.name = "Gingembre"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Lait écremé"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Navet"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Poireau"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.shelf_tag = "Légumes"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Copeaux de chocolat"
  ingredient.confirmed = true
  ingredient.description = "Du chocolat en copeaux"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Jus d'orange"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Boisson"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Épinard"
  ingredient.confirmed = true
  ingredient.description = "Légume en feuille au goût particulier censé rendre plus fort..."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Légume"),
    IngredientTag.find_by_name("Hiver"),
  ]
  ingredient.shelf_tag = "Légumes"
end


Ingredient.create! do |ingredient|
  ingredient.name = "Vermouth"
  ingredient.confirmed = true
  ingredient.description = "Le vermouth est un vin aromatisé (apéritif à base de vin)"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Boisson"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Anhydride_sulfureux"),
  ]
  ingredient.shelf_tag = "Alcools"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Fumet de poisson"
  ingredient.confirmed = true
  ingredient.description = "Un fumet de poisson est un fond préparé à partir de poisson"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Poisson"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Poissons"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Fécule"
  ingredient.confirmed = true
  ingredient.description = "La fécule est une matière extraite de divers organes végétaux"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Épicerie"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Gluten"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Yaourt nature"
  ingredient.confirmed = true
  ingredient.description = ""
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Rhum"
  ingredient.confirmed = true
  ingredient.description = "Le rhum est une eau-de-vie originaire des Amériques, transformée à partir de la canne à sucre. Il souvent utilisé en patisserie."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Boisson"),
  ]
  ingredient.shelf_tag = "Alcools"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sucre glace"
  ingredient.confirmed = true
  ingredient.description = "Le sucre glace est obtenu par broyage du sucre cristallisé"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Fromage blanc"
  ingredient.confirmed = true
  ingredient.description = "Le fromage blanc est un fromage à pâte fraiche"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Framboise"
  ingredient.confirmed = true
  ingredient.description = "La framboise est un fruit rouge issu du framboisier"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Fruit"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.shelf_tag = "Fruits"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Mascarpone"
  ingredient.confirmed = true
  ingredient.description = "Le mascarpone est un fromage italien, originaire des régions de Piémont-Lombardie. Ingrédient de choix de la cuisine italienne, il entre dans la composition de nombreuses recettes de cuisine et particulièrement dans les desserts, dont le célèbre tiramisu."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Rayon frais"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Edulcorant"
  ingredient.confirmed = true
  ingredient.description = "Un substitut de sucre est un additif alimentaire qui donne un goût sucré similaire à celui du sucre tout en contenant beaucoup moins d'énergie alimentaire que les édulcorants à base de sucre, ce qui en fait un édulcorant dépourvu de calories ou hypocalorique."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Marsala"
  ingredient.confirmed = true
  ingredient.description = "Le marsala est un vin à dénomination d'origine contrôlée produit dans la région de la ville italienne Marsala en Sicile."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Boisson"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Anhydride_sulfureux"),
  ]
  ingredient.shelf_tag = "Alcools"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Spéculoos"
  ingredient.confirmed = true
  ingredient.description = "Le spéculoos est un biscuit traditionnel souvent consommé lors de la fête de la Saint Nicolas en Belgique"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
  ]
  ingredient.allergen_tags << [
    AllergenTag.find_by_name("Lactose"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cacao"
  ingredient.confirmed = true
  ingredient.description = "Le cacao est la poudre obtenue après broyage de l'amande des fèves de cacao plates fermentées produites par le cacaoyer"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Épicerie"),
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
  ]
  ingredient.shelf_tag = "Epicerie"
end

Ingredient.create! do |ingredient|
  ingredient.name = "Viande des Grisons"
  ingredient.confirmed = true
  ingredient.description = "La viande des Grisons est une salaison de viande de bœuf élaborée en Suisse, spécialité du canton des Grisons"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
  ingredient.shelf_tag = "Viandes"
end

Utensil.destroy_all

Utensil.create! do |utensil|
  utensil.title = "Blender"
end

Utensil.create! do |utensil|
  utensil.title = "Plancha"
end

Utensil.create! do |utensil|
  utensil.title = "Rouleau à ptisserie"
end

Utensil.create! do |utensil|
  utensil.title = "Moule à cannelés"
end

Utensil.create! do |utensil|
  utensil.title = "Réfrigérateur"
end

# Utensils
Utensil.create! do |utensil|
  utensil.title = "Fouet"
end
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
Utensil.create! do |utensil|
  utensil.title = "Bol"
end
Utensil.create! do |utensil|
  utensil.title = "Film plastique"
end
Utensil.create! do |utensil|
  utensil.title = "Moule à tarte"
end
Utensil.create! do |utensil|
  utensil.title = "Verre"
end
Utensil.create! do |utensil|
  utensil.title = "Cure-dent"
end
Utensil.create! do |utensil|
  utensil.title = "Cuillère parisienne"
end
Utensil.create! do |utensil|
  utensil.title = "Batteur"
end
Utensil.create! do |utensil|
  utensil.title = "Poche à douille"
end
Utensil.create! do |utensil|
  utensil.title = "Plaque à patisserie"
end
Utensil.create! do |utensil|
  utensil.title = "Plat au four"
end
Utensil.create! do |utensil|
  utensil.title = "Presse-purée"
end
Utensil.create! do |utensil|
  utensil.title = "Économe"
end
Utensil.create! do |utensil|
  utensil.title = "Moule à crème brulée"
end
Utensil.create! do |utensil|
  utensil.title = "Moule à brioche"
end
Utensil.create! do |utensil|
  utensil.title = "Pinceau"
end
Utensil.create! do |utensil|
  utensil.title = "Hachoir"
end
Utensil.create! do |utensil|
  utensil.title = "Cocotte"
end
Utensil.create! do |utensil|
  utensil.title = "Rouleau de film en aluminium"
end
Utensil.create! do |utensil|
  utensil.title = "Mijoteuse électrique"
end
Utensil.create! do |utensil|
  utensil.title = "Grille"
end
Utensil.create! do |utensil|
  utensil.title = "Plaque antiadhésive"
end

Utensil.create! do |utensil|
  utensil.title = "Mixeur plongeant"
end

Utensil.create! do |utensil|
  utensil.title = "Cuillère à glace"
end

Utensil.create! do |utensil|
  utensil.title = "Plat à dessert"
end

Utensil.create! do |utensil|
  utensil.title = "Râpe"
end
Utensil.create! do |utensil|
  utensil.title = "Réfrigérateur"
end
Utensil.create! do |utensil|
  utensil.title = "Cuillère en bois"
end
Utensil.create! do |utensil|
  utensil.title = "Marmite"
end
Utensil.create! do |utensil|
  utensil.title = "Ramequin"
end
Utensil.create! do |utensil|
  utensil.title = "Sorbetière"
end
Utensil.create! do |utensil|
  utensil.title = "Chinois"
end
Utensil.create! do |utensil|
  utensil.title = "Rouleau à pâtisserie"
end

Utensil.create! do |utensil|
  utensil.title = "Grille"
end

Utensil.create! do |utensil|
  utensil.title = "Rouleau à pâtisserie"
end

Utensil.create! do |utensil|
  utensil.title = "Papier cuisson"
end

Utensil.create! do |utensil|
  utensil.title = "Zesteur"
end

Utensil.create! do |utensil|
  utensil.title = "Presse agrume"
end

Utensil.create! do |utensil|
  utensil.title = "Verrine"
end

Utensil.create! do |utensil|
  utensil.title = "Écumoire"
end

Utensil.create! do |utensil|
  utensil.title = "Ramequin"
end

Utensil.create! do |utensil|
  utensil.title = "Moule à manquer"
end

Utensil.create! do |utensil|
  utensil.title = "Cul de poule"
end

Utensil.create! do |utensil|
  utensil.title = "Billig"
end

Utensil.create! do |utensil|
  utensil.title = "Crêpière"
end

Utensil.create! do |utensil|
  utensil.title = "Gaufrier"
end

Utensil.create! do |utensil|
  utensil.title = "Pince à désarêter"
end

Utensil.create! do |utensil|
  utensil.title = "Grille à gâteaux"
end

Utensil.create! do |utensil|
  utensil.title = "Auto-cuiseur"
end

Utensil.create! do |utensil|
  utensil.title = "Plat à tarte"
end


RecipeCategory.destroy_all

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
RecipeCategory.create! do |category|
  category.name = "Accompagnement"
end

RecipeCategory.create! do |category|
  category.name = "Bon marché"
end

RecipeCategory.create! do |category|
  category.name = "Coûteux"
end

RecipeCategory.create! do |category|
  category.name = "Végétarien"
end

RecipeCategory.create! do |category|
  category.name = "Vegan"
end

RecipeCategory.create! do |category|
  category.name = "Sauce"
end

# Recipes

Recipe.destroy_all

Recipe.create! do |recipe|
  recipe.title = "Sandwich jambon beurre"
  recipe.description = "Le sandwich français par excellence."
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
  recipe.ingredients << Ingredient.find_by_name("Jambon blanc")
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

Recipe.create! do |recipe|
  recipe.title = "Guacamole"
  recipe.description = "Sauce à base d'avocat. Délicieuse avec des tortillas chips"
  recipe.steps = [
    "Couper les avocats en 2, enlever le noyau, vider la chair dans un petit saladier et l'écraser en purée.",
    "Coupez le citron en deux et réservez le jus de l'une des moitié dans un petit bol",
    "Assaisonner avec tous les ingrédients en goûtant (c'est le meilleur moyen de le faire à votre goût) et mélanger. ",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Autres"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/guacamole.jpg'),
                      filename: 'guacamole.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 5
  recipe.person = 1
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Avocat")
  recipe.ingredients << Ingredient.find_by_name("Citron")
  recipe.ingredients << Ingredient.find_by_name("Ail en poudre")
  recipe.ingredients << Ingredient.find_by_name("Paprika en poudre")
  recipe.ingredients << Ingredient.find_by_name("Cumin en poudre")
  recipe.ingredients << Ingredient.find_by_name("Piment de Cayenne en poudre")
  recipe.ingredients << Ingredient.find_by_name("Tabasco")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Bol")
end

Recipe.create! do |recipe|
  recipe.title = "Spaghetti à la carbonara (les vraies !)"
  recipe.description = "Plat typique italien. Simple et efficace !"
  recipe.steps = [
    "Faites chauffer une cuillerée d'huile dans une petite poêle anti-adhésive, versez-y le dés de guanciale (ou les lardons) et laissez-les rissoler quelques minutes.",
    "Cassez les oeufs dans un grand saladier et ajoutez-y une petite pincée de sel et de poivre.",
    "Mélangez à l'aide d'un fouet.",
    "Ajoutez peu à peu le parmesan rapé et commencez à batte avec le fouet",
    "Faites bouillir un grand volume d'eau dans une grande casserole. Dès que l'eau bout, salez-la et plongez-y les pâtes. Laissez-les cuire le temps indiqué sur le paquet en les mélangeant de temps en temps. Pendant la cuisson des pâtes, récupérez avec une petite louche un peu d'eau de cuisson des pâtes et réservez-la dans un bol.",
    "Une fois les pâtes égouttées, versez-les immédiatement encore chaudes dans le saladier avec la sauce.",
    "Ajoutez les lardons et remuez bien. Si la préparation vous parez trop sèche, ajoutez-y un peu d'eau de cuisson",
    "Poivrez abondamment et ajoutez un peu de parmesan rapées selon les goûts.",
    "Régalez-vous !"
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/spaghetti_carbo.jpg'),
                      filename: 'spaghetti_carbo.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 15
  recipe.preparation_time = 10
  recipe.person = 2
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Spaghetti")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Lardons")
  recipe.ingredients << Ingredient.find_by_name("Parmesan")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive extra vierge")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Louche")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Saladier")
end

Recipe.create! do |recipe|
  recipe.title = "Salade César"
  recipe.description = "Plat frais et savoureux. Idéal penant les fortes chaleurs "
  recipe.steps = [
    "Râpez le parmesan et mettez le côté. Ensuite, hâchez l'ail.",
    "Une heure avant le repas, mélanger la mayonnaise, le lait, le jus de citron, le parmesan, la moutarde, l'ail, le sel et le poivre. Filmer et laisser reposer une heure au réfrigérateur.",
    "Couper les tranches de pain en cube. Faire revenir les croûtons dans un filet d'huile d'olive pendant 2 minutes et laisser refroidir.",
    "Couper le poulet en petits morceaux et faire cuire dans une poêle anti-adhésive sans matière grasse. Faire dorer et laisser refroidir.",
    "Déchirer la laitue et petits morceaux. ",
    "Pour finir, dresser dans l'ordre : salade, poulet, croûtons et sauce César. ",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/salade_cesar.jpg'),
                      filename: 'salade_cesar.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 60
  recipe.person = 4
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Laitue iceberg")
  recipe.ingredients << Ingredient.find_by_name("Blanc de poulet")
  recipe.ingredients << Ingredient.find_by_name("Pain de mie")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Mayonnaise")
  recipe.ingredients << Ingredient.find_by_name("Parmesan")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Jus de citron")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Moutarde de Dijon")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[9].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[10].recipe_quantity = nil
  recipe.recipe_ingredients[11].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Film plastique")
end

Recipe.create! do |recipe|
  recipe.title = "Quiche au saumon"
  recipe.description = "Entrée basique et très bonne"
  recipe.steps = [
    "Préchauffer le four sur thermostat 8. Mettre la pâte brisée dans un moule à tarte de 30 cm de diamètre environ et la piquer à la fourchette.",
    "Battre les oeufs et la crème fraîche puis verser le tout dans le plat. ",
    "Couper le saumon en lanières ou en dés et le mettre dans le plat. Puis, faire de même avec le gruyère coupé en dés.",
    "Pour finir, saler légèrement et poivrer. Faire cuire sur thermostat 8 (200°c environ) pendant 35 minutes.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/quiche_au_saumon.jpeg'),
                      filename: 'quiche_au_saumon.jpg', content_type: 'image/jpeg')
  recipe.cooking_time = 35
  recipe.preparation_time = 15
  recipe.person = 6
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Pâte brisée")
  recipe.ingredients << Ingredient.find_by_name("Saumon")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.ingredients << Ingredient.find_by_name("Gruyère")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Fourchette")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Moule à tarte")
end

Recipe.create! do |recipe|
  recipe.title = "Avocat crevettes"
  recipe.description = "Entrée fraîche et délicieuse en été"
  recipe.steps = [
    "Peler les avocats et les couper en cubes grossièrement. Ecraser finement à la fourchette. Ajouter quelques gouttes de jus de citron pour ne pas qu'ils noircissent.",
    "Saler et poivrer. Réserver l'avocat.",
    "A part, mélanger le surimi râpé avec la mayonnaise. ",
    "Dans un bol, mélanger la crème fraîche avec la ciboulette ciselée. Saler et poivrer. ",
    "Décortiquer les crevettes en faisant attention de ne pas les abîmer. En reserver quatre, les plus belles, et couper les huit autres en deux dans le sens de la longueur pour faire 2 moitiés équivalentes.",
    "Dans chaque verre, répartir au fond le surimi à la mayonnaise. Coller sur les parois 4 demi-crevettes (face bombée vers l'extérieur).",
    "Répartir la purée d'avocat dans les 4 verres, tasser légèrement le tout puis finir avec la crème à la ciboulette.",
    "Enfin, déposer sur chaque verre une crevette entière. Réfrigérer les verres jusqu'au moment de passer à table, au moins 30 minutes. On peut mettre au congélateur si on est un peu pressé.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/avocat_crevettes.jpg'),
                      filename: 'avocat_crevettes.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 50
  recipe.person = 4
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Avocat")
  recipe.ingredients << Ingredient.find_by_name("Jus de citron")
  recipe.ingredients << Ingredient.find_by_name("Surimi")
  recipe.ingredients << Ingredient.find_by_name("Crevette")
  recipe.ingredients << Ingredient.find_by_name("Mayonnaise")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.ingredients << Ingredient.find_by_name("Ciboulette")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 12, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 15, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Brin(s)"))
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.recipe_ingredients[8].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Verre")
  recipe.utensils << Utensil.find_by_title("Fourchette")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Bol")
  recipe.utensils << Utensil.find_by_title("Saladier")
end

Recipe.create! do |recipe|
  recipe.title = "Billes de melon et jambon cru"
  recipe.description = "Apéritif très frais et idéal sur une terrace."
  recipe.steps = [
    "Épluchez le melon puis faire des billes à l'aide d'une cuillère parisienne.",
    "Enrouler des morceaux de jambon cru tout autour et les attacher à l'aide d'un cure-dents.",
    "Réserver dans un bol au réfrigérateur jusqu'au moment de servir.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Apéritif"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/melon_jambon.png'),
                      filename: 'melon_jambon.jpg', content_type: 'image/png')
  recipe.cooking_time = 0
  recipe.preparation_time = 5
  recipe.person = 8
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Melon")
  recipe.ingredients << Ingredient.find_by_name("Jambon cru")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 8, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.utensils << Utensil.find_by_title("Cuillère parisienne")
  recipe.utensils << Utensil.find_by_title("Cure-dent")
  recipe.utensils << Utensil.find_by_title("Bol")
end

Recipe.create! do |recipe|
  recipe.title = "Mousse au chocolat"
  recipe.description = "Dessert très simple à réaliser. Il est aussi très savoureux"
  recipe.steps = [
    "Cassez le chocolat en morceaux et faites-le fondre au bain-marie avec la crème.",
    "Hors de feu, ajoutez les graines de la gousse de vanille. Mélangez et laissez tiédir.",
    "Incorporez les jaunes d'oeufs en fouettant. Laissez refroidir complètement.",
    "Montez les blancs en neige ferme avec une pincée de sel. À mi-parcours, versez le sucre.",
    "Incorporez-les délicatement à la crème au chocolat en soulevant la préparation. La mousse doit être lisse, légère et homogène.",
    "Mettez au réfrigérateur pendant 1 heure puis répartissez la mousse dans 6 coupes à l'aide d'une poche à douille si vous en possédez une.",
    "Remettez au frais encore 1 heure minimum avant de servir.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/mousse_chocolat.jpg'),
                      filename: 'mousse_chocolat.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 20
  recipe.person = 6
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Chocolat noir")
  recipe.ingredients << Ingredient.find_by_name("Jaune d'oeuf")
  recipe.ingredients << Ingredient.find_by_name("Blanc d'oeuf")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.ingredients << Ingredient.find_by_name("Gousse de vanille")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 250, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Batteur")
  recipe.utensils << Utensil.find_by_title("Poche à douille")
end

Recipe.create! do |recipe|
  recipe.title = "Salade de fruits"
  recipe.description = "Dessert très simple à réaliser. Riche en vitanime, il est rès savoureux"
  recipe.steps = [
    "Rincez les raisins. Epluchez la pomme et retirez le trognon. Pelez la banane, l’orange, le pamplemousse et les kiwis.",
    "Coupez tous les fruits en petits morceaux.",
    "Mettez les fruits dans un saladier, ajoutez le sucre et le jus de citron afin qu’ils ne noircissent pas.",
    "Mélangez.",
    "Réservez la salade de fruits au frais jusqu’au moment de servir.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/salade_de_fruits.jpeg'),
                      filename: 'salade_de_fruits.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 0
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Pomme")
  recipe.ingredients << Ingredient.find_by_name("Banane")
  recipe.ingredients << Ingredient.find_by_name("Orange")
  recipe.ingredients << Ingredient.find_by_name("Pamplemousse")
  recipe.ingredients << Ingredient.find_by_name("Kiwi")
  recipe.ingredients << Ingredient.find_by_name("Raisin noir")
  recipe.ingredients << Ingredient.find_by_name("Citron")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Crêpes"
  recipe.description = "Recette phare lors de la Chandeleur. Idéale avec de la confiture ou du sucre"
  recipe.steps = [
    "Mettez la farine dans un saladier avec le sel et le sucre.",
    "Faites un puits au milieu et versez-y les œufs légèrement battus à la fourchette.",
    "Commencez à incorporer doucement la farine avec une cuillère en bois. Quand le mélange devient épais, ajoutez le lait froid petit à petit.",
    "On peut utiliser un fouet mais toujours doucement pour éviter les grumeaux.",
    "Quand tout le lait est mélangé, la pâte doit être assez fluide, si elle vous paraît trop épaisse, rajoutez un peu de lait. Ajoutez ensuite le beurre fondu, mélangez bien.",
    "Faites cuire les crêpes dans une poêle chaude (pas besoin de matière grasse, elle est déjà dans la pâte).",
    "Verser une petite louche de pâte dans la poêle, faites un mouvement de rotation pour répartir la pâte sur toute la surface. Posez sur le feu et quand le tour de la crêpe se colore en roux clair, il est temps de la retourner. ",
    "Laissez cuire environ une minute de ce côté et la crêpe est prête.",
    "Répétez jusqu'à épuisement de la pâte.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/crepes.jpg'),
                      filename: 'crepes.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 15
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Extrait de vanille")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 250, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Louche")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Mayonnaise"
  recipe.description = "Recette idéale pour accompagner des frites, des crustacés ou des grillades"
  recipe.steps = [
    "Attention ! Tous les ingrédients doivent être à température ambiante.",
    "Dans un saladier, mettre le jaune d’œuf avec 1 cuillère à soupe d'huile et la moutarde. ",
    "Au fouet manuel, mélanger en effectuant un mouvement de rotation afin de mêler la moutarde au jaune d’œuf. Tout en fouettant, ajouter au fur et à mesure l'huile en filet. Continuer jusqu'à que l'huile soit bien incorporée. ",
    "Dés que le mélange s'épaissit, assaisonner de sel et de poivre. Au dernier moment verser du jus de citron à votre convenance.",
    "Vous pouvez assaisonner la mayonnaise avec de l'estragon, du gros poivre, du curry etc...",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Autres"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/mayonnaise.jpg'),
                      filename: 'mayonnaise.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 10
  recipe.person = 6
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Jaune d'oeuf")
  recipe.ingredients << Ingredient.find_by_name("Moutarde de Dijon")
  recipe.ingredients << Ingredient.find_by_name("Huile de tournesol")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Jus de citron")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Cuillère")
end

Recipe.create! do |recipe|
  recipe.title = "Salade grecque aux avocats"
  recipe.description = "Salade savoureuse et très fraîche. Idéale en été."
  recipe.steps = [
    "Couper les avocats et les tomates en dés. Emietter la feta. Faire dorer les pignons à sec dans une poêle. Dénoyauter les olives et les couper en petits bouts. Mettre le tout dans un saladier.",
    "Pour la sauce, mélanger l'huile et le vinaigre. Ajouter le ketchup et la sauce soja. Mélanger puis verser sur la salade.",
    "Placer la salade au frais pendant une demi-heure ou moins longtemps si tous vos ingrédients étaient déjà frais.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Accompagnement"),
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/salade_avocats.jpg'),
                      filename: 'salade_avocats.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 3
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Avocat")
  recipe.ingredients << Ingredient.find_by_name("Feta")
  recipe.ingredients << Ingredient.find_by_name("Pignons de pin")
  recipe.ingredients << Ingredient.find_by_name("Olives noires")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Vinaigre balsamique")
  recipe.ingredients << Ingredient.find_by_name("Ketchup")
  recipe.ingredients << Ingredient.find_by_name("Sauce soja")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 120, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Bol")
  recipe.utensils << Utensil.find_by_title("Poêle")
end

Recipe.create! do |recipe|
  recipe.title = "Poulet au curry"
  recipe.description = "Plat à base de poulet. Très savoureux."
  recipe.steps = [
    "Émincer les oignons et couper les blancs de poulet en dés.",
    "Faire revenir légèrement les oignons dans un peu d'huile, y mettre à faire saisir le poulet à feu vif et le laisser cuire 20/30 minutes à feu doux, saler, poivrer.",
    "En fin de cuisson ajouter les cuillères de curry en poudre, laisser cuire 5/10 minutes à feu doux.",
    "Ajouter la crème fraîche. Mélanger sans laisser bouillir. Éteindre le feu et saupoudrer de persil hâché.",
    "Servir avec du riz blanc ou des pâtes fraîches.",
    "Régalez-vous !",
    "Pour ceux qui désirent une recette plus légère, couper la crème fraîche avec du lait.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/poulet_curry.jpg'),
                      filename: 'poulet_curry.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 40
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Blanc de poulet")
  recipe.ingredients << Ingredient.find_by_name("Curry en poudre")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.ingredients << Ingredient.find_by_name("Persil")
  recipe.ingredients << Ingredient.find_by_name("Huile de tournesol")
  recipe.ingredients << Ingredient.find_by_name("Oignon jaune")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Poêle")
end

Recipe.create! do |recipe|
  recipe.title = "Palmiers au basilic"
  recipe.description = "Apéritif très savoureux pendant l'été."
  recipe.steps = [
    "Pelez les gousses d'ail, mixez-les avec le basilic et l'huile d'olive jusqu'à ce que vous obteniez une purée épaisse.",
    "Abaissez la pâte feuilletée sur une planche farinée en un rectangle d'environ 40 sur 30 cm.",
    "Étalez la purée de basilic sur la surface de la pâte, repliez les deux grands côtés vers le centré badigeonnez la pâte d'huile d'olive,",
    "Repliez à nouveau les côtés vers le centre, huilez encore, repliez une nouvelle fois vers le centre afin d'obtenir une sorte de rouleau. ",
    "Placez-le 30 min au congélateur.",
    "Préchauffez le four Th.6 (180°C) sortez le rouleau de pâte du congélateur, coupez-le en tranches d'un cm d'épaisseur.",
    "Posez-les sur une plaque à pâtisserie huilée avec l'huile de tournesol.",
    "Saupoudrez de quelques grains de fleur de sel et laissez cuire 15 min.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Apéritif"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/palmier_basilic.jpg'),
                      filename: 'palmier_basilic.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 15
  recipe.preparation_time = 30
  recipe.person = 5
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Pâte feuilletée")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Basilic")
  recipe.ingredients << Ingredient.find_by_name("Huile de tournesol")
  recipe.ingredients << Ingredient.find_by_name("Fleur de sel")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Feuille(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Mixeur")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Plaque à patisserie")
  recipe.utensils << Utensil.find_by_title("Four")
end

Recipe.create! do |recipe|
  recipe.title = "Welsh"
  recipe.description = "Plat typique nordiste. Un bon plat copieux très bon en hiver."
  recipe.steps = [
    "Préchauffez le four à 180°C (th.6). Faites griller vos tranches de pain de campagne (1 par personne) dans un grille-pain et disposez-les dans des plats individuels allant au four.",
    "Sur chaque tranche de pain, disposez une tranche de jambon.",
    "Coupez le Cheddar en dés. Faites-le fondre dans une casserole à feu très doux sans cesser de remuer avec une cuillère en bois.",
    "Quand la consistance devient nappante, ajoutez-y la bière, la sauce Worcestershire et le Tabasco puis mélangez.",
    "Une fois que tous les ingrédients sont bien mélangés, vous pouvez incorporer la moutarde.",
    "Dès ébullition, versez immédiatement sur chaque assiette, directement sur le pain et le jambon et enfournez votre Welsh pendant quelques minutes pour faire gratiner le fromage fondu.",
    "Servez bien chaud, dès la sortie du four.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/welsh.jpeg'),
                      filename: 'welsh.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 15
  recipe.preparation_time = 20
  recipe.person = 4
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Pain de campagne")
  recipe.ingredients << Ingredient.find_by_name("Jambon blanc")
  recipe.ingredients << Ingredient.find_by_name("Cheddar")
  recipe.ingredients << Ingredient.find_by_name("Bière brune")
  recipe.ingredients << Ingredient.find_by_name("Sauce Worcestershire")
  recipe.ingredients << Ingredient.find_by_name("Tabasco")
  recipe.ingredients << Ingredient.find_by_name("Moutarde de Dijon")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Plat au four")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Four")
end

Recipe.create! do |recipe|
  recipe.title = "Ratatouille"
  recipe.description = "Accompagnement estivale, riche en vitamines."
  recipe.steps = [
    "Lavez et détaillez les courgettes, l'aubergine, le poivron vert et le rouge, en cubes de taille moyenne. Coupez les tomates en quartiers et émincez l'oignon.",
    "Dans une poêle, versez un peu d'huile d'olive.",
    "Ajoutez par les poivrons, puis les aubergines, les courgettes et enfin les oignons et les tomates que vous cuirez ensemble.",
    "Après avoir fait cuire les légumes, ajoutez-les tous aux tomates et aux oignons, baissez le feu puis mélangez.",
    "Ajoutez un beau bouquet garni de thym, de romarin et de laurier, salez, poivrez, puis couvrez pour laisser mijoter 40 minutes en remuant régulièrement.",
    "À environ 10 minutes du terme de la cuisson, ajoutez les deux belles gousses d'ail écrasées puis couvrez de nouveau.",
    "Assaisonner de nouveau selon vos goûts. ",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Accompagnement"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/ratatouille.jpg'),
                      filename: 'ratatouille.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 60
  recipe.preparation_time = 20
  recipe.person = 4
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Courgette")
  recipe.ingredients << Ingredient.find_by_name("Aubergine")
  recipe.ingredients << Ingredient.find_by_name("Poivron vert")
  recipe.ingredients << Ingredient.find_by_name("Poivron rouge")
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Bouquet garni")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[8].recipe_quantity = nil
  recipe.recipe_ingredients[9].recipe_quantity = nil
  recipe.recipe_ingredients[10].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Salade de pâtes à la sicilienne"
  recipe.description = "Salade très fraîches en été."
  recipe.steps = [
    "Avec un couteau pointu, incisez la peau des tomates en croix, puis plongez-les dans une casserole d'eau bouillante pendant 2 min.",
    "Ensuite, passez-les sous l'eau froide, pelez-les puis coupez-les en deux et ôtez les pépins. Coupez la chair en lanières.",
    "Dénoyautez les olives et coupez-les avec le fromage en petis dés. Coupez les anchois en petits morceaux",
    "Dans un saladier, mélangez tous les ingrédients avec l'huile d'olive, assaisonnez",
    "Cuisez les pâtes dans une grande quantité d'eau bouillante salée. 2gouttez-les quand elles sont cuites et passez les sous l'eau froide.",
    "Mélangez les pâtes froides à la préparation dans le saladier",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Bon marché"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/salade_pates_sicilienne.jpg'),
                      filename: 'salade_pates_sicilienne.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 15
  recipe.person = 4
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Penne")
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Filet d'anchois")
  recipe.ingredients << Ingredient.find_by_name("Olive verte dénoyautée")
  recipe.ingredients << Ingredient.find_by_name("Olive noire dénoyautée")
  recipe.ingredients << Ingredient.find_by_name("Fromage de chèvre frais")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Origan")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Grammes(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Grammes(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.recipe_ingredients[8].recipe_quantity = nil
  recipe.recipe_ingredients[9].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Passoire")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Saladier")
end

Recipe.create! do |recipe|
  recipe.title = "Tartine tomate-mozzarella"
  recipe.description = "Plat d'été très simple mais parfait quand on n'a pas le temps de cuisiner"
  recipe.steps = [
    "Détailler la baguette en quatre tartines. Épluchez la gousse d'ail et frottez-en les tartines",
    "Lavez les tomates et coupez-les en rondelles ainsi que la mozarella.",
    "Disposez les rondelles de tomate et de mozzarella en alternant sur les tartines.",
    "Saupoudrez d'herbes de Provence, assaisonez, et enfournez 8 min à 200°C (thermostat 7)",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Bon marché"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tartine_tomate_mozza.jpg'),
                      filename: 'tartine_tomate_mozza.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 8
  recipe.preparation_time = 10
  recipe.person = 2
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Baguette de pain")
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Mozzarella")
  recipe.ingredients << Ingredient.find_by_name("Herbes de Provence")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pincée(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Four")
end

Recipe.create! do |recipe|
  recipe.title = "Œuf mimosa au jambon"
  recipe.description = "Entrée très simple et parfaite en été"
  recipe.steps = [
    "Faites bouillir de l'eau salée dans une casserole et ajoutez les œufs.",
    "Laissez cuire 10 minutes à petite ébullition. Égouttez-les et refroidissez-les.",
    "Écalez-les, coupez-les en deux, puis récupérez les jaunes. Coupez le jambon blanc en petits dés.",
    "Écrasez les jaunes à la fourchette, puis ajoutez le jambon et la mayonnaise. Assaisonnez et mélangez",
    "Versez la préparation dans les blancs d'oeufs durs et dégustez.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Bon marché"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/oeuf_mimosa.png'),
                      filename: 'oeuf_mimosa.png', content_type: 'image/png')
  recipe.cooking_time = 10
  recipe.preparation_time = 5
  recipe.person = 2
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Jambon blanc")
  recipe.ingredients << Ingredient.find_by_name("Mayonnaise")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Passoire")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Purée de pommes de terre et carottes"
  recipe.description = "Accompagnement rapide à faire et idéal avec de la viande ou du poisson"
  recipe.steps = [
    "Épluchez les pommes de terre et coupez-les en morceaux. Épluchez les carottes et coupez-les en rondelles.",
    "Placez les pommes de terre et les carottes dans une casserole avec de l'eau froide et du sel. Portez à ébullition et laissez cuire 40 min environ. Égouttez bien et passez au presse-purée.",
    "Faites bouillir le lait avec le beurre, assaisonnez et ajoutez la muscade",
    "Versez le tout sur la purée, mélangez bien et servez.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Accompagnement"),
    RecipeCategory.find_by_name("Bon marché"),
    RecipeCategory.find_by_name("Végétarien"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/purée_carotte_pdt.jpg'),
                      filename: 'purée_carotte_pdt.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 40
  recipe.preparation_time = 15
  recipe.person = 1
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.ingredients << Ingredient.find_by_name("Carotte")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Muscade")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 15, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pincée(s)"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Économe")
  recipe.utensils << Utensil.find_by_title("Passoire")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Presse-purée")
end

Recipe.create! do |recipe|
  recipe.title = "Escalope de veau gratiné"
  recipe.description = "Plat savoureux avec une touche d'Italie pour garantir un bon repas."
  recipe.steps = [
    "Réalisez des copeaux de parmesan à l'aide d'un économe ou rappez-le.",
    "Dans une poêle, faites colorer l'escalope de veau au beurre.",
    "Posez-la dans un plat allant au four et recouvrez-la avec la tranche de jambon de Parme.",
    "Ajoutez une cuillière de crème fraîche, parsemez de copeaux de parmesan et faites gratiner pendant 5 min au four à 180° (thermostat 6).",
    "Régalez-vous !",
    "Conseil : Dégustez ce plat avec des spaghetti"
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Bon marché"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/escalope_gratinée.jpg'),
                      filename: 'escalope_gratinée.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 8
  recipe.preparation_time = 5
  recipe.person = 1
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Escalope de veau")
  recipe.ingredients << Ingredient.find_by_name("Parmesan")
  recipe.ingredients << Ingredient.find_by_name("Jambon de Parme")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Noisette(s)"))
  recipe.utensils << Utensil.find_by_title("Économe")
  recipe.utensils << Utensil.find_by_title("Plat au four")
end

Recipe.create! do |recipe|
  recipe.title = "Pain perdu"
  recipe.description = "Dessert très simple mais tellement délicieux."
  recipe.steps = [
    "Cassez les oeufs dans un saladier et mélangez-les avec le sucre à l'aide d'un fouet. Puis ajoutez le lait et mélangez bien.",
    "Faites fondre le beurre dans une poêle. Trempez les tranches de brioche dans le mélange pendant 15 sec, en les retournant.",
    "Posez les tranches dans la poêle chaude",
    "Faites-les colorer de chaque côté et dégustez-les de suite",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Bon marché"),
    RecipeCategory.find_by_name("Végétarien"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/pain_perdu.jpg'),
                      filename: 'pain_perdu.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 4
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Brioche")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 30, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 15, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Fouet")
end

Recipe.create! do |recipe|
  recipe.title = "Crème brulée vanillée au pain d'épices"
  recipe.description = "Dessert très simple mais tellement bon."
  recipe.steps = [
    "Fendez la gousse de vanille en deux. Mettez-la dans une casserole avec la crème et faites bouillir.",
    "Fouettez les jaunes d'oeufs avec le miel jusqu'à ce que le mélange blanchisse.",
    "Versez la crème par-dessus. Mélangez bien et ôtez la gousse de vanille.",
    "Coupez les tranches de pain d'épices en petits cubes et disposez-les au fond des moules à crème brulée. Versez la préparation par-dessus.",
    "Faites cuire au bain-marie à 120° (thermostat 4) pendant 30 min. Saupoudrez ensuite de cassonade et passez sous le grill pour caraméliser le dessus.",
    "Laissez refroidir ou servez tiède.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/creme_brulee.jpg'),
                      filename: 'creme_brulee.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 30
  recipe.preparation_time = 10
  recipe.person = 6
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Crème")
  recipe.ingredients << Ingredient.find_by_name("Jaune d'oeuf")
  recipe.ingredients << Ingredient.find_by_name("Gousse de vanille")
  recipe.ingredients << Ingredient.find_by_name("Cassonade")
  recipe.ingredients << Ingredient.find_by_name("Miel liquide")
  recipe.ingredients << Ingredient.find_by_name("Pain d'épices")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 30, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Moule à crème brulée")
  recipe.utensils << Utensil.find_by_title("Plat au four")
end

Recipe.create! do |recipe|
  recipe.title = "Tarte au chocolat et noix de pécan"
  recipe.description = "Dessert savoureux que je fais dès que j'en ai l'occasion !"
  recipe.steps = [
    "Étalez la pâte et piquez-la régulièrement avec une fourchette. Beurrez un moule à tarte et déposez-y la pâte.",
    "Recouvrez-la d'un papier sulfurisé, mettez un poid par-dessus (haricots secs par exemple puis enfournez dans un four chaud à 200° (thermostat 7) pendant 8 min.",
    "Retirez le poids et le papier sulfurisé, puis poursuivez la cuisson 3 min. Sortez le moule du four et laissez refroidir.",
    "Faites griller les noix de pécan au four pendant 10 min à 180° (thermostat 6).",
    "Faites bouillir la crème et versez-la sur le chocolat coupé en morceaux. Mélangez bien.",
    "Étalez les noix de pécan sur la tarte. Versez la crème au chocolat par-dessus et laissez reposer 2 heures au réfrigirateur avant de servir.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Bon marché"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tarte_chocolat_pecan.jpg'),
                      filename: 'tarte_chocolat_pecan.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 20
  recipe.preparation_time = 140
  recipe.person = 8
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Pâte brisée sucrée")
  recipe.ingredients << Ingredient.find_by_name("Chocolat noir")
  recipe.ingredients << Ingredient.find_by_name("Crème liquide")
  recipe.ingredients << Ingredient.find_by_name("Noix de pécan")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.utensils << Utensil.find_by_title("Moule à tarte")
  recipe.utensils << Utensil.find_by_title("Plat au four")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Saladier")
end

Recipe.create! do |recipe|
  recipe.title = "Brioche"
  recipe.description = "Dessert très facile et savoureux au petit déjeûner"
  recipe.steps = [
    "Faites fondre le beurre.",
    "Mélanger dans une jatte en plastique tous les ingrédients jusqu'à ce que la pâte se détache des bords.",
    "Laissez lever dans un endroit tempéré environ 2 heures. ",
    "Préchauffez le four Th 6 (180°C). ",
    "Faire retomber alors la pâte avec une cuillère puis mettre dans un moule à brioche beurré et fariné et laissez à nouveau monter (à 1/2 cm du bord).",
    "Enfournez à four tiède (Th 6) pendant 30 mn environ (le couteau doit ressortir sec quand on le plante dans la brioche).",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Bon marché"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/brioche.jpg'),
                      filename: 'brioche.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 30
  recipe.preparation_time = 130
  recipe.person = 4
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Levure")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 250, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 125, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Sachet(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pincée(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.utensils << Utensil.find_by_title("Moule à brioche")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Tarte au sucre"
  recipe.description = "Très agréable après un repas copieux !"
  recipe.steps = [
    "Faites tiédir le lait et délayer la levure dans le lait tiède et le sucre.",
    "Dans un saladier, mélanger la farine, les oeufs entiers, le sel et la préparation de levure.",
    "Faire fondre le beurre, le laisser refroidir et le mélanger à la préparation. Bien travailler la pâte.",
    "Faire lever la pâte dans le saladier, recouvert d'un torchon, pendant une heure.",
    "Verser la pâte dans une tourtière et la faire lever à nouveau pendant une heure.",
    "Préparer la garniture : disposer sur la pâte des noix de beurre puis saupoudrer de sucre fin.",
    "Faire cuire au four thermostat 6/7 (200°C) pendant un quart d'heure à 20 minutes, jusqu'à ce que la tarte soit bien dorée.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Bon marché"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tarte_au_sucre.jpg'),
                      filename: 'tarte_au_sucre.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 20
  recipe.preparation_time = 135
  recipe.person = 6
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Levure")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 250, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Morceau(x)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pincée(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 25, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.utensils << Utensil.find_by_title("Moule à tarte")
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Four")
end

Recipe.create! do |recipe|
  recipe.title = "Îles flottantes"
  recipe.description = "Dessert très agréable après un bon repas"
  recipe.steps = [
    "Faire bouillir le lait avec la gousse de vanille fendue dans la longueur et en ayant préalablement gratté la gousse.",
    "Laisser infuser la préparation 5 minutes, puis retirer la gousse.",
    "Séparer les jaunes d'oeufs et les battre avec 80 g de sucre.",
    "Ajouter le lait chaud puis remettre sur feu doux pour faire épaissir le mélange.",
    "Agiter sans arrêt avec une cuillère en bois et sans faire bouillir la crème. La crème est prise lorsque la mousse blanche en surface disparaît.",
    "Mettre au réfrigérateur une fois la préparation refroidie.",
    "Dans une grande casserole, mettre 2 l d'eau à bouillir.",
    "Monter les blancs en neige avec une pincée de sel et ajouter doucement 30 g de sucre.",
    "Former des boules de blancs d'oeuf avec deux cuillères à soupe et les faire cuire toutes les faces dans de l'eau bouillante.",
    "Compter 1 min et égoutter sur papier absorbant.",
    "Dorer les amandes à la poêle.",
    "Faire un caramel blond avec le sucre en morceaux, un filet de citron et 2 cuillères à soupe d'eau.",
    "Mettre la crème dans un plat creux. Y déposer les blancs puis décorer avec des filets de caramel et un peu d'amandes.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/ile_flottante.jpeg'),
                      filename: 'ile_flottante.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 35
  recipe.preparation_time = 20
  recipe.person = 4
  recipe.difficulty = 6
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Gousse de vanille")
  recipe.ingredients << Ingredient.find_by_name("Amande effilée")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Sucre en morceaux")
  recipe.ingredients << Ingredient.find_by_name("Citron")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 60, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 30, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 110, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 60, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pincée(s)"))
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Pinceau")
  recipe.utensils << Utensil.find_by_title("Cuillère")
end

Recipe.create! do |recipe|
  recipe.title = "Banana split"
  recipe.description = "Dessert d'été parfait pour se rafraîchir."
  recipe.steps = [
    "Faites fondre le chocolat.",
    "Mettre une banane dans chaque plat (de préférence de la même forme).",
    "Placer ensuite 3 boules de glace puis napper de chocolat.",
    "Ajouter quelques noisettes de chantilly !!!",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/banana_split.jpeg'),
                      filename: 'banana_split.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 0
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Banane")
  recipe.ingredients << Ingredient.find_by_name("Glace vanille")
  recipe.ingredients << Ingredient.find_by_name("Glace au chocolat")
  recipe.ingredients << Ingredient.find_by_name("Glace à la fraise")
  recipe.ingredients << Ingredient.find_by_name("Crème chantilly")
  recipe.ingredients << Ingredient.find_by_name("Chocolat noir")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Boule(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Boule(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Boule(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.utensils << Utensil.find_by_title("Cuillère à glace")
  recipe.utensils << Utensil.find_by_title("Plat à dessert")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Les meilleurs nugget's"
  recipe.description = "J'ai longtemps cherché comment faire des nuggets légers et savoureux et après plusieurs essais, voici ma recette."
  recipe.steps = [
    "Mixez 4 escalopes de poulet avec 4 blancs d'œufs puis ajouter le sel et le poivre.",
    "Avec une cuillère à soupe formez des petites boulettes avec ce mélange.",
    "Roulez les boulettes dans la chapelure afin de les recouvrir.",
    "Dans une poêle, faire chauffer de l'huile et mettre les nuggets à cuire.",
    "Retournez les nuggets au bout de 4 à 5 min (quand ils sont bien dorés).",
    "Servez avec des frites ou des pâtes",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Bon marché"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/nuggets.jpg'),
                      filename: 'nuggets.jpeg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Blanc d'oeuf")
  recipe.ingredients << Ingredient.find_by_name("Escalope de poulet")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Chapelure")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Mixeur")
end

Recipe.create! do |recipe|
  recipe.title = "Hachis parmentier"
  recipe.description = "Plat copieux et savoureux du Dimanche midi."
  recipe.steps = [
    "Préchauffer le four à 200°C (thermostat 6-7).",
    "Préparez une purèe avec le pommes de terre.",
    "Hacher l'oignon et l'ail. Les faire revenir dans le beurre jusqu'à ce qu'ils soient tendres",
    "Ajouter les tomates coupées en dés, la viande hachée, la farine, du sel, du poivre et les herbes de Provence.",
    "Quand tout est cuit, couper le feu et ajouter le jaune d'oeuf et un peu de parmesan. Bien mélanger.",
    "Etaler au fond du plat à gratin. Préparer la purée. L'étaler au dessus de la viande.",
    "Saupoudrer de fromage râpé et faire gratiner.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/hachis_parmentier.jpg'),
                      filename: 'nuggets.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 20
  recipe.preparation_time = 25
  recipe.person = 4
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Boeuf haché")
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Herbes de Provence")
  recipe.ingredients << Ingredient.find_by_name("Jaune d'oeuf")
  recipe.ingredients << Ingredient.find_by_name("Parmesan")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Gruyère rapé")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pincée(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 30, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[9].recipe_quantity =
    RecipeQuantity.create!(:value => 30, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[10].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[11].recipe_quantity = nil
  recipe.recipe_ingredients[12].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Hachoir")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Plat au four")
end

Recipe.create! do |recipe|
  recipe.title = "Magret de canard au miel"
  recipe.description = "Plat très savoureux qui met en avant ce met délicat."
  recipe.steps = [
    "Inciser les magrets côté peau en quadrillage sans couper la viande.",
    "Cuire les magrets à feu vif dans une cocotte en fonte, en commençant par le coté peau.",
    "Le temps de cuisson dépend du fait qu'on aime la viande plus ou moins saignante. Compter environ 5 min de chaque côté. Retirer régulièrement la graisse en cours de cuisson.",
    "Réserver les magrets au chaud (au four, couverts par une feuille d'aluminium).",
    "Déglacer la cocotte avec le miel et le vinaigre balsamique. Ne pas faire bouillir, la préparation tournerait au caramel. Bien poivrer.",
    "Mettre la préparation en saucière accompagnant le magret coupé en tranches.",
    "Comme accompagnement, je suggère des petits navets glacés (cuits à l'eau puis passés au beurre avec un peu de sucre).",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Coûteux"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/magret_canard_miel.jpeg'),
                      filename: 'magret_canard_miel.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 10
  recipe.preparation_time = 10
  recipe.person = 2
  recipe.difficulty = 6
  recipe.ingredients << Ingredient.find_by_name("Magret de canard")
  recipe.ingredients << Ingredient.find_by_name("Miel")
  recipe.ingredients << Ingredient.find_by_name("Vinaigre balsamique")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Cocotte")
  recipe.utensils << Utensil.find_by_title("Rouleau de film en aluminium")
  recipe.utensils << Utensil.find_by_title("Four")
end

Recipe.create! do |recipe|
  recipe.title = "Tajine de poulet facile !"
  recipe.description = "Plat oriental très savoureux. Je vous conseille de posséder un grand plat à tajine, sinon tous les ingrédients ne rentreront pas."
  recipe.steps = [
    "Faire revenir le poulet à feu moyen pour qu'il soit un peu doré.",
    "Pendant ce temps, peler et couper les légumes : couper les carottes en 2 , puis dans le sens de la longueur. Idem pour les courgettes. Couper les oignons en lamelles et les pommes de terres en 4.",
    "Mettre les légumes avec le poulet, rajouter les épices à tajine et le cumin. Mettez également un peu d'eau (un verre d'eau).",
    "Laisser cuire environ 1 heure et voilà, c'est prêt !",
    "Déposez l'ensemble de la préparation dans un joli plat à tajine et servez le tout aussitôt !",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tajine_poulet.jpeg'),
                      filename: 'tajine_poulet.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 60
  recipe.preparation_time = 30
  recipe.person = 4
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Cuisse de poulet")
  recipe.ingredients << Ingredient.find_by_name("Courgette")
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.ingredients << Ingredient.find_by_name("Carotte")
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Cumin en poudre")
  recipe.ingredients << Ingredient.find_by_name("Épices pour tajine")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Eau")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[9].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Mijoteuse électrique")
end

Recipe.create! do |recipe|
  recipe.title = "Escargots au beurre d'ail"
  recipe.description = "Entrée typiquement française !"
  recipe.steps = [
    "Hâchez très finement le persil, l'ail et les échalotes.",
    "Bien égoutter dans une passoire les escargots (achetés en boîte de conserve), de préférence taille 'moyenne'.",
    "Laisser ramollir le beurre à température ambiante... Une fois le beurre ramolli, incorporer le persil et mélanger avec une cuillère ou une fourchette.",
    "Ajouter l'ail et l'échalote, et bien mélanger à nouveau",
    "Ajouter le sel et le poivre, et bien mélanger à nouveau.",
    "Une fois les escargots égouttés, les mettre dans des coquilles et les farcir avec ce beurre. Ensuite, les mettre dans un plat.",
    "Préchauffer le four à 180°C (Th 6).",
    "Une fois le four bien chaud, enfourner le plat et laisser chauffer jusqu'à frémissement du beurre (environ 10 min).",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/escargot_beurre_ail.jpg'),
                      filename: 'escargot_beurre_ail.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 30
  recipe.person = 2
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Escargot")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Persil")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Échalote")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Conserve(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 500, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 15, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 53, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 27, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 13, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.utensils << Utensil.find_by_title("Passoire")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Fourchette")
  recipe.utensils << Utensil.find_by_title("Cuillère")
end

Recipe.create! do |recipe|
  recipe.title = "Anneaux de calamars au chorizo"
  recipe.description = "Tellement bon ! Mais on peut remplacer le chorizo par les des tranches épaisses de poitrine fumée que vous pourrez découper en cubes plus facilement."
  recipe.steps = [
    "Cuire les anneaux de calamars encore congelés suivant les indications du paquet.",
    "Les égoutter.",
    "Couper le chorizo en 12 cubes plus ou moins réguliers.",
    "Mettre au centre de chaque anneau un cube de chorizo et maintenir le tout avec une pique apéritive.",
    "Badigeonner d'huile d'olive.",
    "Cuire 10 minutes au barbecue, à la plancha ou les griller à sec dans une poêle antiadhésive en le retournant souvent.",
    "Saler et poivrer et parsemer de ciboulette ciselée avant de servir.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/calamar_chorizo.jpeg'),
                      filename: 'calamar_chorizo.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 10
  recipe.preparation_time = 10
  recipe.person = 2
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Calamars surgelés")
  recipe.ingredients << Ingredient.find_by_name("Chorizo")
  recipe.ingredients << Ingredient.find_by_name("Ciboulette")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 12, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Passoire")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Pinceau")
  recipe.utensils << Utensil.find_by_title("Grille")
  recipe.utensils << Utensil.find_by_title("Poêle")
end

Recipe.create! do |recipe|
  recipe.title = "Pizza italienne en forme de fleur"
  recipe.description = "Plat italien typique remis au goût du jour."
  recipe.steps = [
    "Étalez la pâte à pizza et badigeonnez-la d'huile d'olive sur les 2 faces. Parsemez la pâte d'origan et un peu de parmesan des 2 cotés.",
    "Placez la pâte sur une plaque et mettez-la 10 min au congélateur.",
    "Préchauffez votre four à 180°.",
    "Découpez des bandes de pâtes de 1-1.5 cm, torsadez-les.",
    "Déposez-les sur une plaque antiadhésive. Cuire 5mn. Laissez-les refroidir.",
    "Sur une plaque antiadhésive, étalez le reste de parmesan en cercles, posez sur chaque cerce l'extrémité des bâtons de pâtes et garnissez de tomate confites, de rondelles d'olive, d'origan et une pointe de mozzarella. Remettez à cuire 5 min environ à 180°.",
    "A la sortie du four, déposez sur chaque fleur des feuilles de basilic en fixant sur la mozzarella.",
    "Lorsque les fleurs commencent à durcir, décollez-les délicatement et mettez-les à refroidir.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/pizza_fleur.jpg'),
                      filename: 'pizza_fleur.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 75
  recipe.person = 4
  recipe.difficulty = 6
  recipe.ingredients << Ingredient.find_by_name("Pâte à pizza")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Parmesan")
  recipe.ingredients << Ingredient.find_by_name("Origan")
  recipe.ingredients << Ingredient.find_by_name("Basilic")
  recipe.ingredients << Ingredient.find_by_name("Olive noire dénoyautée")
  recipe.ingredients << Ingredient.find_by_name("Tomate confite")
  recipe.ingredients << Ingredient.find_by_name("Mozzarella")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Feuille(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 15, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Boule(s)"))
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Plaque antiadhésive")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Soupe rustique aux châtaignes"
  recipe.description = "Entrée très agréable lors de longues soirées en Hiver."
  recipe.steps = [
    "Fendre la peau des châtaignes dans le sens de la largueur les plonger dans un bain d'huile bouillante : les peaux se retirent facilement au bout de 30 secondes.",
    "Ajouter le bouillon de volaille, puis finir la cuisson pour avoir une purée. Ecraser à la fourchette.",
    "Faire revenir l'oignon et le lard fumé en petits dés dans le beurre.",
    "Ajouter la pomme de terre en dés et la fricassée aux chataignes, puis ajouter le lait.",
    "Laisser mijoter à feu doux 20 mn. Poivrer et saler, mais goûter avant car le sel est en partie apporté par le beurre et le lard.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/soupe_chataigne.jpg'),
                      filename: 'soupe_chataigne.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 20
  recipe.preparation_time = 40
  recipe.person = 3
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Châtaigne")
  recipe.ingredients << Ingredient.find_by_name("Cube de bouillon de volaille")
  recipe.ingredients << Ingredient.find_by_name("Lait entier")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Lard fumé")
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.ingredients << Ingredient.find_by_name("Beurre salé")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 500, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Verre(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Noix"))
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Louche")
  recipe.utensils << Utensil.find_by_title("Mixeur plongeant")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Fourchette")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Hachoir")
end

Recipe.create! do |recipe|
  recipe.title = "Tzatziki"
  recipe.description = "Recette de ce classique de la cuisine grecque ! Pour l'apéro pour accompagner des bâtonnets de concombre ou bien des gressins. Un délice !"
  recipe.steps = [
    "Râper le concombre et le faire dégorger 15 min. ",
    "Le mettre dans un saladier, ajouter l'ail écrasé, la menthe et le coriandre finement hachés, mettre le yaourt, l'huile, le sel et le poivre, remuer et mettre au frais.",
    "Le servir très frais avec du pain grec en apéritif, ou tel quel en entrée.",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tzatziki.jpg'),
                      filename: 'tzatziki.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 25
  recipe.person = 2
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Concombre")
  recipe.ingredients << Ingredient.find_by_name("Ail")
  recipe.ingredients << Ingredient.find_by_name("Menthe")
  recipe.ingredients << Ingredient.find_by_name("Coriandre")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Yaourt")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Feuille(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Feuille(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Râpe")
  recipe.utensils << Utensil.find_by_title("Cuillère en bois")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Réfrigérateur")
end

Recipe.create! do |recipe|
  recipe.title = "Soupe à la tomate rapide"
  recipe.description = "Recette de soupe à la tomate simple et rapide. Un délice !"
  recipe.steps = [
    "Dans une cocotte minute (ou marmite) verser de l'huile d'olive et chauffer un peu, couper très grossièrement tous les légumes et les verser dans l'huile chaude. Remuer quelques minutes, couvrir d'eau, fermer la cocotte et laisser cuire 10 minutes. ",
    "Ensuite ouvrir la cocotte, mixer le tout (avec un bras mixeur par ex), vérifier l'assaisonnement et ajouter les vermicelles, laisser bouillir 3 minutes. C'est prêt ! ",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/soupe_de_tomate_rapide.jpg'),
                      filename: 'soupe_de_tomate_rapide.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 15
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.ingredients << Ingredient.find_by_name("Ail")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Vermicel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.recipe_ingredients[8].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Louche")
  recipe.utensils << Utensil.find_by_title("Cuillère en bois")
  recipe.utensils << Utensil.find_by_title("Marmite")
  recipe.utensils << Utensil.find_by_title("Mixeur")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Gaspacho"
  recipe.description = "Très bonne recette de gaspacho facile et rapide à réaliser. Un délice !"
  recipe.steps = [
    "Couper les tomates, 1 poivron vert et un rouge, 1 concombre, l'oignon et l'ail, passer le tout au mixer. ",
    "Ajouter le pain de mie, mixer une nouvelle fois.",
    "Assaisonner avec sel,poivre, 4 cuillères à soupe d'huile d'olive, 2 cuillères à soupe de vinaigre de Xérès et de piment (selon les goûts). ",
    "Laisser reposer au frais au minimum 2 heures",
    "Détailler en petits dés poivrons et concombre restants. Ecraser les oeufs durs à la fourchette. Parsemer la soupe de basilic ciselé. ",
    "Disposer les garnitures dans des ramequins et chacun accommodera son gaspacho selon ses goûts. ",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/gaspacho.jpg'),
                      filename: 'gaspacho.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 15
  recipe.person = 6
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Poivron rouge")
  recipe.ingredients << Ingredient.find_by_name("Poivron vert")
  recipe.ingredients << Ingredient.find_by_name("Concombre")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Ail")
  recipe.ingredients << Ingredient.find_by_name("Vinaigre de Xérès")
  recipe.ingredients << Ingredient.find_by_name("Pain de mie")
  recipe.ingredients << Ingredient.find_by_name("Oeuf dur")
  recipe.ingredients << Ingredient.find_by_name("Basilic")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Piment")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 9, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[9].recipe_quantity = nil
  recipe.recipe_ingredients[10].recipe_quantity = nil
  recipe.recipe_ingredients[11].recipe_quantity = nil
  recipe.recipe_ingredients[12].recipe_quantity = nil
  recipe.recipe_ingredients[13].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Cuillère en bois")
  recipe.utensils << Utensil.find_by_title("Ramequin")
  recipe.utensils << Utensil.find_by_title("Mixeur")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Fourchette")
end

Recipe.create! do |recipe|
  recipe.title = "Tortilla facile"
  recipe.description = "Très bonne recette de tortilla facile et rapide à réaliser. Un délice !"
  recipe.steps = [
    "Battez les oeufs en omelette dans un saladier en ajoutant le sel, le poivre et les herbes de provence. ",
    "Coupez l'oignon en fines lamelles, les pommes de terre en carrés et réservez. ",
    "Faites chauffer de l'huile dans une poêle, lorsque l'huile est chaude y faire cuire les pommes de terre à feu doux et les dorer en fin de cuisson (vérifier avec la pointe d'une fourchette) à feu moyen. ",
    "Ajoutez et faites rissoler les oignons. ",
    "Verser les oeufs battus en omelette sur la poêle. ",
    "Retournez l'omelette comme vous pouvez sur l'autre face (soit à l'aide d'une assiette, soit en la découpant en quatre morceaux et en les retournant avec une spatule)et cuisez-la. ",
    "Cette omelette se déguste aussi bien chaude que froide.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tortilla_facile.jpeg'),
                      filename: 'tortilla_facile.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 20
  recipe.preparation_time = 15
  recipe.person = 2
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 5, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Spatule")
  recipe.utensils << Utensil.find_by_title("Fourchette")
  recipe.utensils << Utensil.find_by_title("Pinceau")
end

Recipe.create! do |recipe|
  recipe.title = "Poulet rôti et ses pommes de terre"
  recipe.description = "Ce plat est généralement apprécié par toute la famille... C'est facile à faire ! Un délice !"
  recipe.steps = [
    "Il vous suffit de mettre le poulet dans un plat à four. ",
    "Pendant ce temps-là, préchauffer le four à 210-240°C (thermostat 7-8). ",
    "Prenez le beurre et découpez-le en morceaux pour le mettre sur le poulet un peu partout. ",
    "Salez, poivrez et herbez la bête...",
    "Ensuite, attaquez-vous au patates... Il faut les éplucher et puis les faire tremper dans l'eau pour les rincer et les essuyer.",
    "Il faut après les découper.",
    "Alors, là, c'est comme vous le sentez... faites de jolies formes si vous le voulez, moi, je fais simplement des carrés.",
    "En fait, je prends la pomme de terre, la découpe en longueur, la tourne, et puis après la découpe dans l'autre longueur et puis je la tourne dans l'autre sens pour la découper en largeur... et ça, ça fait des sortes de carrés.",
    "Et je mets toutes les pommes de terres dans le plat autour du poulet. Les sale.",
    "Et puis direction le four après avoir arrosé le tout d'un demi-verre d'eau.",
    "Je laisse cuire 1h15... plus ou moins en fonction du poulet et des pommes de terre.",
    "Je le tourne régulièrement pendant la cuisson, sur chaque face... Et puis s'il le faut je réarrose d'eau... comme ça, les pommes de terre baignent dans le jus.",
    "Une fois que c'est prêt et bien il suffit de servir !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/poulet_roti_et_ses_pommes_de_terre.jpg'),
                      filename: 'poulet_roti_et_ses_pommes_de_terre.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 60
  recipe.preparation_time = 15
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Poulet")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Herbes de Provence")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Économe")
  recipe.utensils << Utensil.find_by_title("Plat au four")
end

Recipe.create! do |recipe|
  recipe.title = "Rôti de porc à la moutarde et au miel"
  recipe.description = "Aussi bon chaud que froid! Délicieux avec une salade de pommes de terres primeurs et des crudités. Un délice !"
  recipe.steps = [
    "Préchauffer le four à 180°C (thermostat 6). ",
    "Mélanger tous les ingrédients ensemble, sauf le rôti et les rondelles d'oignons.",
    "Badigeonner le rôti de cette sauce et le coucher sur les oignons. Rectifier l'assaisonnement si besoin.",
    "Ajouter le bouillon, couvrir le rôti et mettre au four pendant environ 1h30.",
    "Pour vérifier la cuisson, piquer avec un cure-dent. S'il pénètre facilement, le rôti est à point.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/roti_de_porc_a_la_moutarde_et_au_miel.jpg'),
                      filename: 'roti_de_porc_a_la_moutarde_et_au_miel.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 60
  recipe.preparation_time = 10
  recipe.person = 6
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Rôti de porc")
  recipe.ingredients << Ingredient.find_by_name("Moutarde de Dijon")
  recipe.ingredients << Ingredient.find_by_name("Miel")
  recipe.ingredients << Ingredient.find_by_name("Ail")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Cube de bouillon de volaille")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Pinceau")
  recipe.utensils << Utensil.find_by_title("Cuillère en bois")
  recipe.utensils << Utensil.find_by_title("Fourchette")
end

Recipe.create! do |recipe|
  recipe.title = "Chili con carne"
  recipe.description = "La dose de Tabasco permet de rendre le plat + ou - épicé sachant qu'avec les piments il est déjà bien relevé mais il n'y a que la pratique pour que ce plat soit comme on l'aime ! et surtout ne pas supprimer les épices. Un délice !"
  recipe.steps = [
    "Hacher ails et oignons et les faire revenir dans l'huile d'olive dans une grande cocotte (prévoir l'équivalent de la cocotte Seb 4,5 l) pendant 10 mn ensuite ajouter la viande et remuer pendant 5-6 mn.",
    "Ajouter le cumin, l'origan, les piments et le Tabasco (plus ou moins selon votre goût). Saler, remuer consciencieusement et mettez sur feux doux. Mouiller avec le bouillon, ajouter tomates et poivron coupé en dés et laisser mijoter pendant 1 heure.",
    "Badigeonner le rôti de cette sauce et le coucher sur les oignons. Rectifier l'assaisonnement si besoin.",
    "Ajouter les haricots égouttés et laisser cuire encore une heure.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/chili_con_carne.jpeg'),
                      filename: 'chili_con_carne.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 120
  recipe.preparation_time = 30
  recipe.person = 8
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Ail")
  recipe.ingredients << Ingredient.find_by_name("Poivron rouge")
  recipe.ingredients << Ingredient.find_by_name("Concentré de tomate")
  recipe.ingredients << Ingredient.find_by_name("Haricot rouge")
  recipe.ingredients << Ingredient.find_by_name("Boeuf haché")
  recipe.ingredients << Ingredient.find_by_name("Cube de bouillon")
  recipe.ingredients << Ingredient.find_by_name("Soupe d'olive")
  recipe.ingredients << Ingredient.find_by_name("Cumin en poudre")
  recipe.ingredients << Ingredient.find_by_name("Origan séché")
  recipe.ingredients << Ingredient.find_by_name("Tabasco")
  recipe.ingredients << Ingredient.find_by_name("Piment d'Espelette")
  recipe.ingredients << Ingredient.find_by_name("Piment de Cayenne en poudre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 750, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Kilogramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[9].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[10].recipe_quantity = nil
  recipe.recipe_ingredients[11].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[12].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[13].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Hachoir")
  recipe.utensils << Utensil.find_by_title("Cocotte")
  recipe.utensils << Utensil.find_by_title("Cuillère en bois")
end

Recipe.create! do |recipe|
  recipe.title = "Compote de pomme simple"
  recipe.description = "Recette de compotte de pomme facile. Un délice !"
  recipe.steps = [
    "Peler vos pommes, les couper en huitième et les épépiner.",
    "Dans une casserole porter à ébullition l'eau, le sucre et les gousses de vanille fendues et grattées.",
    "Quand l'eau est portée à ébullition y ajouter les pommes.",
    "Faire cuire à feu doux en remuant de temps en temps.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/compotte_de_pomme_facile.jpg'),
                      filename: 'compotte_de_pomme_facile.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 15
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Pomme")
  recipe.ingredients << Ingredient.find_by_name("Gousse de vanille")
  recipe.ingredients << Ingredient.find_by_name("Eau")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 800, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Mijoteuse électrique")
end

Recipe.create! do |recipe|
  recipe.title = "Sorbet à la fraise"
  recipe.description = "Recette de sorbet à la fraise. Un délice !"
  recipe.steps = [
    "Faites un sirop avec l'eau et le sucre, remuez pour faire fondre le sucre et laissez bouillir 2 mn. Laissez refroidir.",
    "Rincez, équeutez les fraises. Mixez-les puis passez-les au travers d'un fin chinois pour retirer les pépins.",
    "Mélangez le sirop et le jus de citron à la purée de fruit.",
    "Versez dans la sorbetière et laissez prendre pendant au moins 2 h.",
    "Disposez les boules de sorbet sur les assiettes de service entourées de fruits rouges.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/sorbet_a_la_fraise.jpg'),
                      filename: 'sorbet_a_la_fraise.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 2
  recipe.preparation_time = 15
  recipe.person = 6
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Fraise")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Citron")
  recipe.ingredients << Ingredient.find_by_name("Eau")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 500, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 125, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 6.5, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.utensils << Utensil.find_by_title("Sorbetière")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Chinois")
end

Recipe.create! do |recipe|
  recipe.title = "Pommes au four"
  recipe.description = "Recette de pommes au four. Un délice !"
  recipe.steps = [
    "Préchauffer votre four à 180°C (thermostat 6). Equeutez les pommes.",
    "Placez les dans un plat allant au four puis piquez-les avec une fourchette (environ 3 fois)",
    "Saupoudrez de sucre.",
    "Versez un verre d'eau au fond du plat.",
    "Mettre au four pendant environ 1/2 heure.",
    "Servir chaud !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/pomme_au_four.jpg'),
                      filename: 'pomme_au_four.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 30
  recipe.preparation_time = 5
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Pomme")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Fourchette")
end

Recipe.create! do |recipe|
  recipe.title = "Ganache au chocolat blanc"
  recipe.description = "Recette de ganache au chocolat blanc. Un délice !"
  recipe.steps = [
    "Commencez par concasser grossièrement le chocolat blanc et placez-le dans une jatte.",
    "Mettez la crème liquide dans une casserole et portez à frémissement.",
    "Versez-la sur le chocolat blanc et laissez reposer pendant 3 min.",
    "Mélangez avec une spatule pour lisser. Suivant les utilisations, laissez légèrement tiédir la ganache à température ambiante ou placez-la au réfrigérateur environ 2 h pour qu'elle se fige.",
    "Simplement tiédie, cette ganache est idéale pour garnir un gâteau de fête (à base de génoise, par exemple). Vous avez ici les proportions pour garnir (intérieur et glaçage) un gâteau pour 6 personnes.",
    "Une fois figée au réfrigérateur, vous pourrez utiliser cette ganache comme base, par exemple, pour des truffes au chocolat blanc ou des bouchées gourmandes.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/ganache_au_chocolat_blanc.jpeg'),
                      filename: 'ganache_au_chocolat_blanc.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 5
  recipe.preparation_time = 5
  recipe.person = 6
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Chocolat blanc")
  recipe.ingredients << Ingredient.find_by_name("Crème liquide")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 25, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Rouleau à pâtisserie")
  recipe.utensils << Utensil.find_by_title("Spatule")
  recipe.utensils << Utensil.find_by_title("Saladier")
end

Recipe.create! do |recipe|
  recipe.title = "Rôti de porc Orloff"
  recipe.description = "Recette de rôti de porc Orloff. Un délice !"
  recipe.steps = [
    "Cuire le rôti de porc salé et poivré dans un plat à four (Th 5/6).",
    "Après 50 mn de cuisson, couper le rôti en tranches en gardant les tranches attachées par le bas (facile avec un couteau électrique).",
    "Glisser entre chaque tranche une tranche de fromage et une tranche de bacon.",
    "Replacer dans le plat de cuisson et arroser avec la crème fraîche.",
    "Remettre au four 10 mn.",
    "Découper complètement, servir en nappant de la sauce qui s'est formée.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/roti_de_porc_orloff.jpg'),
                      filename: 'roti_de_porc_orloff.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 60
  recipe.preparation_time = 10
  recipe.person = 6
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Rôti de porc")
  recipe.ingredients << Ingredient.find_by_name("Gouda")
  recipe.ingredients << Ingredient.find_by_name("Bacon")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Kilogramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 25, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Spatule")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Bruschetta (Italie)"
  recipe.description = "Entrée italienne à de pain, tomate et huile d'olive. Rapide et gourmande."
  recipe.steps = [
    "Découper les tomates en petits dés après avoir retiré la partie verte en haut, les mettre dans un petit saladier avec une bonne huile d'olive et du sel",
    "Faire griller les tranches de pain de campagne, puis les frotter d'ail.",
    "Disposer le mélange tomate/huile d'olive généreusement sur la tartine, à déguster aussitôt (tiède)."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/bruschetta-italie.jpg'),
                      filename: 'bruschetta-italie.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 25
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Pain de campagne")
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 8, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 8, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Grille")
end

Recipe.create! do |recipe|
  recipe.title = "Rouleaux de printemps"
  recipe.description = "Entrée asiatique fraîche agréable, surtout en plein été. Meilleur accompagner d'une sauce \"Nuc-mam\"(sauce chinoise)."
  recipe.steps = [
    "Plongez les galettes de riz dans de l' eau chaude pendant quelques secondes pour qu'elles deviennent molles puis laissez légèrement égoutter.",
    "Cuire le porc et les crevettes dans de l'eau chaude.",
    "Etalez la galette de riz sur une table de travail.",
    "Commencez par mettre une feuille de salade et quelques feuilles de menthe.",
    "Mettez ensuite les vermicelles de riz.",
    "Puis le porc coupé en morceaux.",
    "Enroulez le rouleau et au dernier tour mettez 3 crevettes préalablement coupées en 2 ."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/rouleaux-de-printemps.jpg'),
                      filename: 'rouleaux-de-printemps.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 35
  recipe.person = 3
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Galette de riz")
  recipe.ingredients << Ingredient.find_by_name("Vermicelles de riz")
  recipe.ingredients << Ingredient.find_by_name("Crevette")
  recipe.ingredients << Ingredient.find_by_name("Porc")
  recipe.ingredients << Ingredient.find_by_name("Laitue")
  recipe.ingredients << Ingredient.find_by_name("Menthe")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Feuille(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Feuille(s)"))
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Tarte au Maroilles"
  recipe.description = "Entrée typique du nord."
  recipe.steps = [
    "Etaler la pâte.",
    "Gratter la croûte du maroilles (ne pas la retirer). Le couper en tranches fines que l'on dépose sur la pâte.",
    "Ajouter de la crème fraîche mélangée à un jaune d'oeuf. Ajouter un peu de paprika.",
    "Faire cuire environ 10 min, à four bien chaud (thermostat 8 / 240°C).",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tarte-au-maroilles.jpg'),
                      filename: 'tarte-au-maroilles.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 25
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Pâte levée")
  recipe.ingredients << Ingredient.find_by_name("Maroilles")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.ingredients << Ingredient.find_by_name("Jaune d'oeuf")
  recipe.ingredients << Ingredient.find_by_name("Paprika en poudre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Moule à tarte")
  recipe.utensils << Utensil.find_by_title("Rouleau à pâtisserie")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Wraps saumon"
  recipe.description = "Entrée froide à base de saumon, un régal frais, léger et très rapide."
  recipe.steps = [
    "Ciseler la ciboulette.",
    "Mélanger au fromage frais.",
    "Recouvrir les tortillas de fromage sur toute leur surface.",
    "Ajouter une tranche de saumon sur chaque tortilla.",
    "Rouler et laisser au frais 10 min.",
    "Si vous souhaitez en faire des amuse-gueule, mettez-les au congélateur 30 min et tranchez sur la largeur.",
    "Piquez avec un cure dent."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/wraps-saumon.jpg'),
                      filename: 'wraps-saumon.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Tortilla")
  recipe.ingredients << Ingredient.find_by_name("Saumon fumé")
  recipe.ingredients << Ingredient.find_by_name("Fromage frais")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 8, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Ciseaux")
  recipe.utensils << Utensil.find_by_title("Cuillère")
end

Recipe.create! do |recipe|
  recipe.title = "Tacos mexicain"
  recipe.description = "Spécialité mexicaine à base de viande, légumes et sauce épicée. On peut accompagner ces tacos de guacamole et/ou de maïs. Pour une version plus légère, les haricots rouges peuvent être supprimés."
  recipe.steps = [
    "A la poêle, faire dorer l'oignon émincé dans un peu d'huile d'olive.",
    "Rajouter la viande, assaisonner et laisser cuire 5 min.",
    "Laver les feuilles de laitue.",
    "Couper les tomates et le poivron en petits dés.",
    "Incorporer le tout à la poêlée avec le coulis de tomate, et poursuivre la cuisson pendant 5 min.",
    "Egoutter les haricots rouges et les ajouter 2 min avant la fin de cuisson.",
    "Hors du feu, ajuster l'assaisonnement et saupoudrer généreusement de cumin; on peut aussi rajouter quelques gouttes de Tabasco.",
    "Garnir les tortillas de préparation et les refermer en les roulant comme des crêpes. Disposer 1 feuille de laitue sur chaque tacos avant de servir.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tacos-mexicain.jpg'),
                      filename: 'tacos-mexicain.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 25
  recipe.preparation_time = 30
  recipe.person = 4
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Tortilla")
  recipe.ingredients << Ingredient.find_by_name("Oignon blanc")
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Coulis de tomate")
  recipe.ingredients << Ingredient.find_by_name("Boeuf haché")
  recipe.ingredients << Ingredient.find_by_name("Haricot rouge")
  recipe.ingredients << Ingredient.find_by_name("Poivron vert")
  recipe.ingredients << Ingredient.find_by_name("Laitue")
  recipe.ingredients << Ingredient.find_by_name("Cumin en poudre")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 8, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 250, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Petite(s) Boîte(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 8, :quantity_type => QuantityType.find_by_name("Feuille(s)"))
  recipe.recipe_ingredients[8].recipe_quantity = nil
  recipe.recipe_ingredients[9].recipe_quantity = nil
  recipe.recipe_ingredients[10].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Pinceau")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Wrap tartiflette"
  recipe.description = "Classique savoyard remis au goût du jour."
  recipe.steps = [
    "Préchauffer le four à 180°C (thermostat 6).",
    "Eplucher les pommes de terre et les cuire dans un grand volume d'eau.",
    "Faire revenir l'oignon émincé et les lardons.",
    "Couper le reblochon en tranches. Couper les pommes de terre en rondelles.",
    "Déposer sur chaque tortilla un peu de lardons fumés revenus avec les oignons, des rondelles de pommes de terre et quelques tranches de reblochon. Plier les bords opposés de la tortilla et la rouler. Faire tenir avec un cure-dent.",
    "Déposer les wraps sur une plaque recouverte de papier cuisson et enfourner 10-15 minutes."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/wraps-tartiflette.jpg'),
                      filename: 'wraps-tartiflette.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 35
  recipe.preparation_time = 10
  recipe.person = 6
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Tortilla")
  recipe.ingredients << Ingredient.find_by_name("Reblochon")
  recipe.ingredients << Ingredient.find_by_name("Lardons")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Papier cuisson")
end

Recipe.create! do |recipe|
  recipe.title = "Yakitori boeuf au fromage"
  recipe.description = "Brochette à la japonaise de la taille d'une bouchée."
  recipe.steps = [
    "Faites mariner les tranches de carpaccio dans un bol rempli de sauce Yakitori pendant au moins 10 minutes.",
    "Pendant ce temps, coupez des morceaux de masdaam d'environ 1 cm sur 4 cm, ou des cubes selon préférence.",
    "Enrobez les morceaux de fromage avec le boeuf bien mariné et piquez les sur des petits pics à brochette (ou alors sur des pics à brochette normaux coupés en deux).",
    "Faites cuire sur un grill ou à défaut sur une poêle chaude environ 1 à 2 minutes de chaque côté.",
    "Servez et dégustez immédiatement."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/yakitori-boeuf-fromage.jpg'),
                      filename: 'yakitori-boeuf-fromage.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 5
  recipe.preparation_time = 30
  recipe.person = 4
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Carpaccio de boeuf")
  recipe.ingredients << Ingredient.find_by_name("Maasdam")
  recipe.ingredients << Ingredient.find_by_name("Sauce Yakitori")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity = nil;
  recipe.utensils << Utensil.find_by_title("Poêle")
end

Recipe.create! do |recipe|
  recipe.title = "Crêpes au Sarrasin complête"
  recipe.description = "Crêpe de blé noir accompagné d'oeuf, gruyère et jambon"
  recipe.steps = [
    "Faire cuire le premier côté, et retourner la crêpe. Casser l'oeuf par dessus, poivrer et laisser légèrement blanchir, puis ajouter le fromage râpé ainsi que la tranche de jambon. Rabattre deux côtés et replier les deux autres.",
    "Renouveler l'opération jusqu'à épuisement des crêpes.",
    "C'est prêt, vous pouvez déguster cela accompagné d'une petite salade verte !"
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/crepes-sarrasin-complete.jpg'),
                      filename: 'crepes-sarrasin-complete.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 5
  recipe.preparation_time = 20
  recipe.person = 6
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Crêpe au Sarrasin")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Jambon blanc")
  recipe.ingredients << Ingredient.find_by_name("Gruyère rapé")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Poêle")
end

Recipe.create! do |recipe|
  recipe.title = "Lemon Curd"
  recipe.description = "Crème de citron à ajouter sur des biscuits."
  recipe.steps = [
    "Laver les citrons et en 'zester' 2, mettre les zestes très fins dans une casserole.",
    "Presser les citrons et mettre le jus avec les zestes dans la casserole.",
    "Verser le sucre et la Maïzena",
    "Remuer, et chauffer à feu doux",
    "Battre les oeufs dans un récipient séparé.",
    "Une fois les oeufs battus, incorporer tout en remuant le jus de citron, le sucre, la maïzena et les zestes.",
    "Mettre à feu fort et continuer à remuer à l'aide d'un fouet. Le mélange va commencer à s'épaissir. Attention : toujours remuer lorsque les oeufs sont ajoutés, car sinon la crème de citron pourrait brûler !",
    "Oter du feu et mettre en pots (pots à confiture). Laisser refroidir, et conserver au réfrigérateur.",
    "Voici 3 idées de recettes minute pour utiliser votre lemon curd: verrines minute(biscuit émiétté, lemon curd, meringue émiettée), tartelettes minute(palet breton, lemon curd, chantilly), mousse minute(émulsionner le lemon curd avec de la chantilly)"
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/lemon-curd.jpg'),
                      filename: 'lemon-curd.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 20
  recipe.person = 6
  recipe.difficulty = 7
  recipe.ingredients << Ingredient.find_by_name("Citron")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Maïzena")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Zesteur")
  recipe.utensils << Utensil.find_by_title("Presse agrume")
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Verrine")
end

Recipe.create! do |recipe|
  recipe.title = "Crème renversée"
  recipe.description = "Crème avec du caramel"
  recipe.steps = [
    "Préparer le caramel dans une petite casserole.",
    "et le verser dans le moule.",
    "Faire bouillir le lait après y avoir ajouté le sucre vanillé et le sucre.",
    "Battre les oeufs en omelette.",
    "Y verser le lait doucement.",
    "Ecumer (retirer les petites bulles en surface)",
    "Verser le mélange ainsi obtenu dans le moule.",
    "Cuisson au four au bain marie : placer le moule dans un recipient plus grand que lui remplit d'eau. Faire cuire à thermostat 4-5 (130 à 150°C). Pour vérifier la cuisson : toucher le centre du bout du doigt. Il doit présenter une certaine résistance.",
    "Servir froid.",
    "Renverser.",
    "Déguster",
    "Bon appétit"
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/creme-renversee.jpg'),
                      filename: 'creme-renversee.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 50
  recipe.preparation_time = 10
  recipe.person = 6
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Sucre vanillé")
  recipe.ingredients << Ingredient.find_by_name("Sucre en morceaux")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Litre(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 75, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Sachet(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 15, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Écumoire")
  recipe.utensils << Utensil.find_by_title("Ramequin")
end

Recipe.create! do |recipe|
  recipe.title = "Gâteau à l'orange"
  recipe.description = "Gâteau savoureux à base d'orange. Un gâteau bien rafraichissant et fort apprécié en fin de repas."
  recipe.steps = [
    "Faites ramollir le beurre et mélangez le avec le sucre en poudre et les œufs.",
    "Ajouter la farine et le sachet de levure chimique.",
    "Ajouter ensuite le zeste des oranges.",
    "Ajouter le jus des 3 oranges.",
    "Beurrer un plat et y mettre cette pâte.",
    "Cuire à four moyen (thermostat 6/7) chaleur tournante pendant 20 min (ou un peu plus en fonction de votre four).",
    "A la sortie du four, arroser ce gâteau avec un sirop réalisé avec : jus d'orange + sucre + éventuellement jus de citron, le tout chauffé un peu pour faire le sirop.",
    "Arroser le gâteau avant de faire une décoration, avec des copeaux de chocolat noir."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/gateau-orange.jpg'),
                      filename: 'gateau-orange.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 30
  recipe.preparation_time = 15
  recipe.person = 6
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Levure")
  recipe.ingredients << Ingredient.find_by_name("Orange")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 115, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 115, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 115, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Sachet(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Moule à manquer")
  recipe.utensils << Utensil.find_by_title("Grille à gâteaux")
end

Recipe.create! do |recipe|
  recipe.title = "Pancake"
  recipe.description = "Il faut déguster les pancakes assez rapidement, car une fois refroidis ils sont un peu moins goûteux. Ils seront délicieux avec un filet de sirop d'érable, de la confiture de framboise ou encore un peu de sucre et jus de citron. Régalez-vous, et vite !!!"
  recipe.steps = [
    "Battre grossièrement l'oeuf et le sucre dans un saladier.",
    "Y rajouter le beurre fondu ou l'huile.",
    "Mélanger à part la farine et la levure, puis en mélanger la moitié avec la préparation.",
    "Délayer progressivement avec le lait tout en rajoutant l'autre moitié de farine petit à petit (cela évitera de créer des grumeaux).",
    "Aucun temps de repos n'est nécessaire, si ce n'est juste le temps de faire chauffer votre poêle à feu moyen.",
    "A l'aide d'une petite louche ou d'une grosse cuillère à sauce, déposer des \"ronds\" dans la poêle.",
    "Lorsque les bulles apparaissent et éclatent, retourner les pancakes et ne pas les laisser plus d'une min sur l'autre face."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/pancake.jpg'),
                      filename: 'pancake.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 5
  recipe.person = 2
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Levure")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Grille à gâteaux")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Louche")
  recipe.utensils << Utensil.find_by_title("Fouet")
end

Recipe.create! do |recipe|
  recipe.title = "Aubergine au four"
  recipe.description = "Repas simple et parfait pour la ligne !"
  recipe.steps = [
    "Coupez chaque aubergine en 2 dans le sens de la longueur (ne pas les éplucher). Zébrez la chair avec un couteau.",
    "Tartinez d'une 1/2 cuillère d'huile d'olive la chair de chaque 1/2 aubergine.",
    "Salez et poivrez",
    "Mettre au four jusqu'à ce que la chair soit molle. Ce plat se mange 'à la coque' avec une petite cuillère.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/Aubergine-au-four.jpg'),
                      filename: 'Aubergine-au-four.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 15
  recipe.preparation_time = 5
  recipe.person = 4
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Aubergine")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity = nil
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Bananes au four"
  recipe.description = "Dessert délicieux"
  recipe.steps = [
    "Epluchez et coupez les bananes en 2. Beurrez votre plat. Disposez-les à l'intérieur puis mettez-les au four préalablement chauffé à 220°C.",
    "Lorsque les bananes sont dorées sortez-les du four puis saupoudrez-les avec le sucre.",
    "Renfournez-les et attendez environ 10 min. A servir chaud. Bon appétit.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/Banane-au-four.jpg'),
                      filename: 'Banane-au-four.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 20
  recipe.preparation_time = 5
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Banane")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Cassonade")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Four")
end

Recipe.create! do |recipe|
  recipe.title = "Brioche perdu"
  recipe.description = "Super dessert facile à faire"
  recipe.steps = [
    "Faire fondre le beurre dans une poêle.",
    "Mélanger les oeufs, le lait et le sucre. Tremper la brioche dans ce mélange et les faire revenir dans le beurre.",
    "Bon appétit.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/Brioche-perdu-.jpg'),
                      filename: 'Brioche-perdu-.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 5
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Brioche")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 25, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 60, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Poêle")
end

Recipe.create! do |recipe|
  recipe.title = "Clafoutis"
  recipe.description = "Dessert simple et fruité !"
  recipe.steps = [
    "Préchauffez le four à 210°C (thermostat 7).",
    "Lavez rapidement les cerises sous un filet d'eau fraîche, équeutez-les et égouttez-les. Personnellement j'enlève les noyaux, mais la recette traditionnelle veut qu'on les laisse, donc c'est à vous de voir si vous les laissez ou pas...",
    "Faites fondre les 40 g de beurre dans une petite casserole à fond épais. Mélangez dans un grand bol la farine, le sucre, le sel et le sucre vanillé. Incorporez les oeufs peu à peu puis le lait petit à petit en continuant de mélanger. Ajoutez le beurre fondu.",
    "Beurrez grassement le plat, rangez les cerises puis versez la pâte à clafoutis.",
    "Mettez au four pendant 10 mn à 210°C puis baissez à 180°C et cuisez encore 20 mn.",
    "Servez le clafoutis froid ou tiède.",
    "Bien mélanger, verser dans un moule a cake et faire cuire 1 heure.",
    "Laisser tiédir avant de démouler.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/clafoutis.jpg'),
                      filename: 'clafoutis.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 30
  recipe.preparation_time = 10
  recipe.person = 8
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Cerise")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 600, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 60, :quantity_type => QuantityType.find_by_name("Sachet(s)"))
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Bol")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Casserole")
end

Recipe.create! do |recipe|
  recipe.title = "Frites"
  recipe.description = "Des bonnes frites comme on les aime"
  recipe.steps = [
    "Peler les pommes de terre et les laver, puis les détailler en parallélépipèdes à base carrée d’environ 1,5 cm de côté (en d’autres termes, en grosses frites). Les laver à nouveau et bien les sécher dans un torchon à vaisselle propre.",
    "Les faire cuire une première fois dans l’huile chauffée à 150°C, pendant 7 à 8 minutes. Il ne faut pas surcharger la friteuse: pour 1 kg de pommes de terre, cuire 1/3 des frites à la fois.",
    "Laisser refroidir les frites, le temps de prendre l’apéro ou de préparer le reste du repas.",
    "Cuire les frites une seconde fois dans l’huile chauffée à 190°C pendant environ 3 mn (elles doivent être croustillantes sans être dures).",
    "Servir les frites aussitôt, accompagnées d’une salière: je déconseille de les saler à l’avance, car, d’une part, les frites ramollissent alors, et d’autre part, je n’aime pas le sel sur les frites (comme ça, chacun sale comme il vaut).",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/frites.jpg'),
                      filename: 'frites.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.ingredients << Ingredient.find_by_name("Huile de friture")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Kilogramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity = nil

  recipe.utensils << Utensil.find_by_title("Friteuse")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Gateau aux carottes"
  recipe.description = "Répas simple et parfait pour la ligne !"
  recipe.steps = [
    "Préchauffer le four à thermostat 5 (150°C).",
    "Faire fondre le beurre",
    "Fouetter les œufs avec le sucre. Quand le mélange double de volume et devient mousseux, ajouter peu à peu la farine et le beurre fondu tout en continuant de fouetter puis la cannelle, la levure et enfin les carottes râpées et les noix sans arrêter de fouetter.",
    "Bien mélanger, verser dans un moule a cake et faire cuire 1 heure.",
    "Laisser tiédir avant de démouler.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/gateau-aux-carottes.jpg'),
                      filename: 'gateau-aux-carottes.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 60
  recipe.preparation_time = 30
  recipe.person = 6
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Carotte")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Levure")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 250, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 125, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 125, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Sachet(s)"))
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Moule à manquer")

end

Recipe.create! do |recipe|
  recipe.title = "Gnocchis"
  recipe.description = "Petite boule de pomme de terre, délicieux"
  recipe.steps = [
    "Épluchez les pommes de terre et faites-les cuire. Passez-les au moulin à légumes et incorporez le beurre ou margarine en petits morceaux. Dans une jatte, mélangez l'œuf, la muscade, l'huile et le sel. Ajoutez les pommes de terre écrasées et la farine. Travaillez l'ensemble de façon à obtenir une pâte bien lisse.",
    "Divisez la pâte en 4 morceaux.",
    "Formez 4 rouleaux longs et fins.",
    "Farinez-les et coupez-les en tronçons de 1 cm et donnez-leur une forme de gnocchis en les écrasant à la fourchette dans la main.",
    "Pochez les gnocchis dans une grande quantité d'eau frémissante salée. Lorsqu'ils remontent en surface, ils sont cuits. Égouttez-les.",
    "Faites fondre tout le beurre ou margarine dans une casserole. Mettez les gnocchis dans un grand plat.",
    "Mélangez et servez les gnocchis aussitôt.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/gnocchi.jpg'),
                      filename: 'gnocchi.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 40
  recipe.person = 4
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Muscade")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Sel")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Kilogramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.recipe_ingredients[7].recipe_quantity = nil

  recipe.utensils << Utensil.find_by_title("Fourchette")
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Casserole")
end

Recipe.create! do |recipe|
  recipe.title = "Oeufs aux herbes"
  recipe.description = "Simple et efficace"
  recipe.steps = [
    "Beurrez une section d’un moule à muffin par personne. Coupez chaque tranche de pain en carré et beurrez-le. Mettez chaque tranche de pain dans le moule à muffin. Il doit former une poche. Assurez-vous que les coins pointent vers le haut.",
    "Posez le jambon sur le pain beurré.",
    "Cassez l’œuf et videz-le sur le jambon. Saupoudrez d’un peu de basilic et de fromage.",
    "Faites cuire au four à votre goût. Le temps de cuisson moyen est de 15 minutes.",
    "Secouez un peu le moule, si les œufs frémissent, c’est qu’ils ne sont pas encore cuits.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/Oeuf_aux_herbes.jpg'),
                      filename: 'Oeuf_aux_herbes.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 15
  recipe.preparation_time = 5
  recipe.person = 1
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Pain de campagne")
  recipe.ingredients << Ingredient.find_by_name("Jambon blanc")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Gruyère")
  recipe.ingredients << Ingredient.find_by_name("Basilic")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.recipe_ingredients[5].recipe_quantity = nil

  recipe.utensils << Utensil.find_by_title("Friteuse")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Pizza chèvre miel"
  recipe.description = "Délicieuse pizza à base de fromage de chèvre"
  recipe.steps = [
    "Bien étaler la pâte sur du papier sulfurisé et la répartir dans un plat à four rond avec un minimum de rebords.",
    "Verser la totalité du pot de crème fraîche dans le plat et bien la répartir.",
    "Couper le chèvre en tranches ou en petits morceaux, puis le répartir sur le plat.",
    "Ajouter le miel liquide uniformément.",
    "Rajouter un peu de miel sur le fromage et éventuellement ajouter quelques olives.",
    "Enfourner à thermostat 6 pendant 30 mn environ, mais surveiller !",
    "Retirer quand la pâte est bien cuite dessous.",
    "Bon appétit.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/pizza-chèvre-miel.jpg'),
                      filename: 'pizza-chèvre-miel.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 30
  recipe.preparation_time = 15
  recipe.person = 4
  recipe.difficulty = 6
  recipe.ingredients << Ingredient.find_by_name("Pâte à pizza")
  recipe.ingredients << Ingredient.find_by_name("Fromage de chèvre frais")
  recipe.ingredients << Ingredient.find_by_name("Miel liquide")
  recipe.ingredients << Ingredient.find_by_name("Crème liquide")
  recipe.ingredients << Ingredient.find_by_name("Olive verte dénoyautée")

  recipe.recipe_ingredients[0].recipe_quantity = nil
  recipe.recipe_ingredients[1].recipe_quantity = nil
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[4].recipe_quantity = nil

  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Soupe de carottes"
  recipe.description = "Soupe très simple à faire à base de carottes"
  recipe.steps = [
    "Dans une cocote minute, faire chauffer l'huile",
    "Ajouter la pomme de terre et les carottes épluchées et coupées en morceaux",
    "Fermer la cocotte pendant 15 minutes.",
    "Mixer et servir",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Autres"),
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/soupe-de-carottes.jpeg'),
                      filename: 'soupe-de-carottes.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 15
  recipe.preparation_time = 5
  recipe.person = 1
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Carotte")
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 30, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.utensils << Utensil.find_by_title("Mixeur")
  recipe.utensils << Utensil.find_by_title("Cocotte")
  recipe.utensils << Utensil.find_by_title("Louche")
end

Recipe.create! do |recipe|
  recipe.title = "Soupe potiron"
  recipe.description = "Délicieuse soupe pour l'automne"
  recipe.steps = [
    "Couper la chair du potiron en gros dès",
    "Ajouter les dès dans une cocotte légrèment huilé, et recouvrir d'eau (juste au niveau des dès) et laisser bouillir pendant 1 heure",
    "Ajouter la crème, le sel, et le poivre et mixer",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/Soupe-potiron.jpg'),
                      filename: 'Soupe-potiron.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 45
  recipe.preparation_time = 30
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Potiron")
  recipe.ingredients << Ingredient.find_by_name("Crème liquide")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Quartier(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Brique(s)"))
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Cocotte")
  recipe.utensils << Utensil.find_by_title("Bol")
end

Recipe.create! do |recipe|
  recipe.title = "Tomate mozzarella"
  recipe.description = "Entrée idéal en été"
  recipe.steps = [
    "Couper la mozzarella et les tomates en tranches d'environs 3mm",
    "Intercaler les tranches de tomates entre les tranches de mozzarella",
    "Verser un léger fil d'huile d'olive, saler, poivrer",
    "Régalez-vous !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tomate-mozzarella.jpg'),
                      filename: 'tomate-mozzarella.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 15
  recipe.person = 1
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Mozzarella")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Couteau")
end

Recipe.create! do |recipe|
  recipe.title = "Cookies vegan au beurre de cacahuètes"
  recipe.description = "Dessert copieux et végétalien, ça se mange sans fin !"
  recipe.person = 4
  recipe.difficulty = 3
  recipe.preparation_time = 10
  recipe.cooking_time = 10
  recipe.steps = [
    "Dans un grand bol, mélangez le lait d'amande, le sucre, la vanille et le beurre de cacahuète.",
    "Ajoutez en tamisant la farine, mélangez avec une grande cuillère ou spatule.",
    "Hachez grossièrement les noix de pécan et le chocolat et ajoutez-les à la préparation.",
    "Placez au frais 20 minutes, puis formez des boules de taille identique que vous aplatissez avec une fourchette (pour quadriller le dessus).",
    "Enfournez à 180°C pendant 10 min, et laissez refroidir avant de déguster."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Beurre de cacahuètes")
  recipe.ingredients << Ingredient.find_by_name("Lait d'amande")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Noix de pécan")
  recipe.ingredients << Ingredient.find_by_name("Extrait de vanille")
  recipe.ingredients << Ingredient.find_by_name("Chocolat noir")
  recipe.ingredients << Ingredient.find_by_name("Levure chimique")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 80, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 120, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Four")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/cookies_vegan.jpg'),
                      filename: 'cookies_vegan.jpg', content_type: 'image/jpg')
end

Recipe.create! do |recipe|
  recipe.title = "Roses des sables"
  recipe.description = "Dessert copieux et végétalien, ça se mange sans fin !"
  recipe.person = 2
  recipe.difficulty = 2
  recipe.preparation_time = 15
  recipe.cooking_time = 0
  recipe.steps = [
    "Faire fondre le chocolat dans un bol.",
    "Verser les cornflakes dans le chocolat fondu et mélanger jusqu’à ce que tous les corn flakes soient enrobés de chocolat.",
    "Sur une plaque recouverte de papier sulfurisé, faire des petits tas, puis laisser reposer une heure au réfrigérateur."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.ingredients << Ingredient.find_by_name("Chocolat noir")
  recipe.ingredients << Ingredient.find_by_name("Cornflakes")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))

  recipe.utensils << Utensil.find_by_title("Saladier")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/roses_vegan.jpg'),
                      filename: 'roses_vegan.jpg', content_type: 'image/jpg')
end

Recipe.create! do |recipe|
  recipe.title = "Snickers maisons"
  recipe.description = "Dessert copieux et végétalien, ça se mange sans fin !"
  recipe.person = 10
  recipe.difficulty = 5
  recipe.preparation_time = 30
  recipe.cooking_time = 0
  recipe.steps = [
    "Pour le biscuit : mixez les flocons d'avoine avec les noix de cajoux jusqu'à obtenir un résultat fin.",
    "Versez dans un saladier avec le sirop d'agave et le beurre de cacahuète. Mélangez avec les mains jusqu'à obtenir une pâte consistante.",
    "Placez du papier cuisson au fond d'un grand plat et étalez la pâte.",
    "Pour le caramel : préparez 200 grammes de dattes dénoyautées. Rajoutez les dans une casserolle avec la margarine,
    le sucre et l'extrait de vanille, puis faites revenir à feu doux.",
    "Une fois que la margarine et le sucre sont réduits à l'état liquide, mixez le tout.",
    "Quand le caramel est bien mixé, mélangez y les cacahuètes puis étalez le tout par dessus le biscuit.",
    "Mettez le plat au congélateur pour 3 heures.",
    "Une fois le temps écoulé, démoulez le tout et coupez le biscuit en petites parts égales.",
    "Faites fondre le chocolat noir dans un grand bol ou un plat creux.",
    "Trempez les bouts dans le chocolat et replacez les sur du papier cuisson.",
    "Une fois tous les snickers prêts, laissez les refroidir au frigo 15 minutes. Fini !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.ingredients << Ingredient.find_by_name("Flocons d'avoine")
  recipe.ingredients << Ingredient.find_by_name("Noix de cajou")
  recipe.ingredients << Ingredient.find_by_name("Sirop d'agave")
  recipe.ingredients << Ingredient.find_by_name("Beurre de cacahuètes")
  recipe.ingredients << Ingredient.find_by_name("Chocolat noir")
  recipe.ingredients << Ingredient.find_by_name("Dattes")
  recipe.ingredients << Ingredient.find_by_name("Margarine")
  recipe.ingredients << Ingredient.find_by_name("Sucre de canne")
  recipe.ingredients << Ingredient.find_by_name("Cacahuètes")
  recipe.ingredients << Ingredient.find_by_name("Extrait de vanille")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 500, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[9].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Mixeur")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/snickers.jpg'),
                      filename: 'snickers.jpg', content_type: 'image/jpg')
end

Recipe.create! do |recipe|
  recipe.title = "Houmous aux tomates séchées"
  recipe.description = "Purée de pois chiches délicieuse et relevé"
  recipe.person = 4
  recipe.difficulty = 3
  recipe.preparation_time = 10
  recipe.cooking_time = 0
  recipe.steps = [
    "Placez tous les ingrédients dans un robot mixeur.",
    "Rajoutez 3 cuillières à soupe d'huile des tomates séchées.",
    "Mixer jusqu'à obtenir une consistance de purée."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.ingredients << Ingredient.find_by_name("Tomates séchées")
  recipe.ingredients << Ingredient.find_by_name("Pois chiche")
  recipe.ingredients << Ingredient.find_by_name("Ail")
  recipe.ingredients << Ingredient.find_by_name("Jus de citron")
  recipe.ingredients << Ingredient.find_by_name("Paprika en poudre")
  recipe.ingredients << Ingredient.find_by_name("Paprika fumé en poudre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 140, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 260, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Mixeur")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tomato_humus.jpg'),
                      filename: 'tomato_humus.jpg', content_type: 'image/jpg')
end

Recipe.create! do |recipe|
  recipe.title = "Bolognaise de lentilles"
  recipe.description = "Bolognaise végé onctueuse !"
  recipe.person = 2
  recipe.difficulty = 4
  recipe.preparation_time = 5
  recipe.cooking_time = 20
  recipe.steps = [
    "Faire revenir l’oignon et les carottes coupées en dés dans de l’huile.",
    "Rajouter les lentilles cuites et les tomates concassées, avec un demi verre d’eau et les herbes de Provence.",
    "Laisser mijoter à couvert pendant 10 minutes.",
    "Servir avec des pâtes."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.ingredients << Ingredient.find_by_name("Spaghetti")
  recipe.ingredients << Ingredient.find_by_name("Lentilles")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Carotte")
  recipe.ingredients << Ingredient.find_by_name("Tomates concassées")
  recipe.ingredients << Ingredient.find_by_name("Herbes de Provence")
  recipe.ingredients << Ingredient.find_by_name("Huile de tournesol")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))

  recipe.utensils << Utensil.find_by_title("Casserole")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/lentils_bolognese.jpg'),
                      filename: 'lentils_bolognese.jpg', content_type: 'image/jpg')
end

Recipe.create! do |recipe|
  recipe.title = "Wraps au soja"
  recipe.description = "Wraps savoureux et riche en protéines"
  recipe.person = 1
  recipe.difficulty = 3
  recipe.preparation_time = 10
  recipe.cooking_time = 10
  recipe.steps = [
    "Faire bouillir un fond d'eau dans une casserole.",
    "Une fois l'eau à ébullition, mettez le soja dans la casserole pour 2-3 minutes.",
    "Egouttez le soja et pressez le un peu pour dégorger de l'eau.",
    "Mélangez les sauces et épices pour rajouter un maximum de goût.",
    "Mettez le tout au four pour 5-10 minutes.",
    "Une fois prêt, savourez dans un wraps avec les condiments de votre choix !"
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.ingredients << Ingredient.find_by_name("Protéines de soja texturées")
  recipe.ingredients << Ingredient.find_by_name("Tortilla")
  recipe.ingredients << Ingredient.find_by_name("Sauce soja")
  recipe.ingredients << Ingredient.find_by_name("Sauce barbecue")
  recipe.ingredients << Ingredient.find_by_name("Ail en poudre")
  recipe.ingredients << Ingredient.find_by_name("Paprika en poudre")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1.5, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1.5, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Presse-purée")
  recipe.utensils << Utensil.find_by_title("Four")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/soy_wraps.jpg'),
                      filename: 'soy_wraps.jpg', content_type: 'image/jpg')
end

Recipe.create! do |recipe|
  recipe.title = "Steaks à hamburgers végétaliens"
  recipe.description = "Une galette maison à base de haricots rouges !"
  recipe.person = 4
  recipe.difficulty = 4
  recipe.preparation_time = 10
  recipe.cooking_time = 20
  recipe.steps = [
    "Préchauffez votre four à 200 degrés Celsius.",
  "Rincez vos haricots rouges si vous les sortez d'une conserve.",
    "Hachez votre oignon finement.",
    "Mettez le tout dans un saladier avec 40 grammes de chapelure (10 grammes pour un steak).",
    "Mélangez avec les différentes épices et le ketchup à la fin.",
    "Verser le contenu dans un mixeur, et faire tourner jusqu'à ce que tout ait la même consistance.",
    "Vous allez obtenir une pâte à la fois solide et collante.
    Formez des boules de tailles régulières et applatissez les sur la plaque du four.",
    "Mettez les steaks au four. Environ 10 minutes pour chaque face.",
    "Une fois cuits, placez les dans des pains à hamburgers, avec les condiments de votre choix !"
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.ingredients << Ingredient.find_by_name("Haricot rouge")
  recipe.ingredients << Ingredient.find_by_name("Chapelure")
  recipe.ingredients << Ingredient.find_by_name("Oignon rouge")
  recipe.ingredients << Ingredient.find_by_name("Ketchup")
  recipe.ingredients << Ingredient.find_by_name("Cumin en poudre")
  recipe.ingredients << Ingredient.find_by_name("Ail en poudre")
  recipe.ingredients << Ingredient.find_by_name("Paprika en poudre")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 500, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Mixeur")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Four")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/vegan_beans_burger.jpg'),
                      filename: 'vegan_beans_burger.jpg', content_type: 'image/jpg')
end

Recipe.create! do |recipe|
  recipe.title = "Falafels"
  recipe.description = "Délicieuses boulettes de pois chiches"
  recipe.person = 4
  recipe.difficulty = 4
  recipe.preparation_time = 15
  recipe.cooking_time = 15
  recipe.steps = [
    "Égoutter les pois chiches et mixer avec l’oignon épluché en morceaux, au robot mixeur.",
    "Ajouter les herbes, les épices, le sel, la farine, et mixer pour obtenir un mélange homogène.",
  "Verser dans un torchon propre, replier et « essorer » pour exprimer un maximum de jus, et assécher la pâte.",
    "Reverser dans le robot et mixer pour obtenir une pâte bien fine.",
    "La pâte reste granuleuse et n’est pas très collante, c’est normal.",
    "Former 20 boulettes entre les mains, en pressant bien, plusieurs fois, de manière à obtenir des boulettes,
    bien arrondies, qui se tiennent et les déposer sur une plaque recouverte de papier cuisson.",
    "Huiler légèrement à l’aide d’un pinceau.",
    "Cuire 10-15 minutes au four à 180°C.",
    "Servir avec de la sauce tahini au citron ou une autre sauce de votre choix. Parfaits pour garnir des wraps, des sandwichs, les apéros…",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]

  recipe.ingredients << Ingredient.find_by_name("Pois chiche")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Persil")
  recipe.ingredients << Ingredient.find_by_name("Coriandre")
  recipe.ingredients << Ingredient.find_by_name("Cumin en poudre")
  recipe.ingredients << Ingredient.find_by_name("Menthe")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Huile de tournesol")
  recipe.ingredients << Ingredient.find_by_name("Sel")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 500, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1.5, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1.5, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1.5, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Brin(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))

  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Mixeur")
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Four")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/falafels.png'),
                      filename: 'falafels.png', content_type: 'image/png')
end

Recipe.create! do |recipe|
  recipe.title = "Salade champignons sauce amande-citron"
  recipe.description = "Salade fraîche pour l'été"
  recipe.person = 2
  recipe.difficulty = 3
  recipe.preparation_time = 10
  recipe.cooking_time = 0
  recipe.steps = [
    "Laver et couper les champignons en deux, puis les émincer le plus finement possible.",
    "Mélanger tous les ingrédients pour réaliser la sauce.",
    "Dresser les champignons dans une grande assiette, arroser généreusement de sauce puis parsemer de persil hachée et d’amandes.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.ingredients << Ingredient.find_by_name("Champignon")
  recipe.ingredients << Ingredient.find_by_name("Purée d'amandes blanches")
  recipe.ingredients << Ingredient.find_by_name("Amande")
  recipe.ingredients << Ingredient.find_by_name("Citron")
  recipe.ingredients << Ingredient.find_by_name("Ail en poudre")
  recipe.ingredients << Ingredient.find_by_name("Persil")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 12, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Mixeur")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/salade_champignons.jpeg'),
                      filename: 'salade_champignons.jpeg', content_type: 'image/jpeg')
end

Recipe.create! do |recipe|
  recipe.title = "Tartinade aux haricots rouges"
  recipe.description = "Idéal pour tartiner à l'apéritif !"
  recipe.person = 2
  recipe.difficulty = 3
  recipe.preparation_time = 15
  recipe.cooking_time = 0
  recipe.steps = [
    "Pressez le jus du demi-citron et mettez tous les ingrédients dans un robot culinaire, et mixez jusqu’à obtenir une purée lisse."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.ingredients << Ingredient.find_by_name("Haricot rouge")
  recipe.ingredients << Ingredient.find_by_name("Citron")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Persil")
  recipe.ingredients << Ingredient.find_by_name("Ciboulette")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 225, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 0.5, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))

  recipe.utensils << Utensil.find_by_title("Mixeur")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tartinade_haricots.jpg'),
                      filename: 'tartinade_haricots.jpg', content_type: 'image/jpg')
end

Recipe.create! do |recipe|
  recipe.title = "Mousse au chocolat vegan"
  recipe.description = "Dessert copieux et végétalien, ça se mange sans fin !"
  recipe.person = 2
  recipe.difficulty = 3
  recipe.preparation_time = 15
  recipe.cooking_time = 0
  recipe.steps = [
    "Faire fondre le chocolat dans un bol. Puis laisser tiédir quelques minutes.",
    "Récupérez l'eau de la conserve de pois chiches et versez dans un saladier.",
    "A l'aide du fouet, montez l'eau de pois chiches en neige avec une pincée de sel.",
    "Incorporez délicatement et progressivement les blancs en neige au le chocolat noir fondu, en utilisant une spatule et en soulevant bien le mélange pour ne pas casser les blancs.",
    "Disposez dans des verres et réservez au réfrigérateur pendant minimum 1h."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.ingredients << Ingredient.find_by_name("Chocolat noir")
  recipe.ingredients << Ingredient.find_by_name("Pois chiche")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))

  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Fouet")

  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/mousse_vegan.jpg'),
                      filename: 'mousse_vegan.jpg', content_type: 'image/jpg')
end

Recipe.create! do |recipe|
  recipe.title = "Crêpe de maître crêpier"
  recipe.description = "Les meilleurs crêpes que l'on peut faire, recette venant directement de Bretagne ! Très simple et rapide, garantis sans grumeaux"
  recipe.steps = [
    "On commence par mettre tous les ingrédients secs dans un cul de poule, soit la farine, le sel et le sucre si vous le faite sur billig sinon ce n'est pas nécessaire. Mélanger.",
    "Ajouter les oeufs et 250g de lait soit un peu plus de la moitié du lait, puis mélanger brièvement jusqu'à ce que la pâte devienne homogène et semblable à une pâte à gateau.",
    "Puis on rajoute le reste du lait et on finit de mélanger. Si vous voulez ajouter un peu d'arôme vous pouvez y mettre un peu de beurre, de la vanille ou de la bière.",
    "Faite reposer la pâte pendant 1h au moins.",
    "Utiliser environ 9ml pour une crêpe et étaler régulièrement avec une roselle. Puis déguster nature ou agrémenter la avec d'autres ingrédients.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/crepes2.jpg'),
                      filename: 'crepes2.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 2
  recipe.preparation_time = 10
  recipe.person = 5
  recipe.difficulty = 6
  recipe.ingredients << Ingredient.find_by_name("Lait entier")
  recipe.ingredients << Ingredient.find_by_name("Farine de froment")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Sel")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 250, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 60, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 5, :quantity_type => QuantityType.find_by_name("Gramme(s)"))

  recipe.utensils << Utensil.find_by_title("Cul de poule")
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Billig")

end

Recipe.create! do |recipe|
  recipe.title = "Gaufres"
  recipe.description = "De delicieuses gaufres pour des gouters inoubliables !"
  recipe.steps = [
    "Mélangez la farine et le sel, faites un puits au centre et cassez-y les oeufs. Ajoutez le beurre fondu, le lait et l'eau. Fouettez avec un fouet manuel ou électrique. Ajoutez le sucre, le sucre vanillé, l'huile, la levure et éventuellement le rhum. Fouettez de nouveau. La pâte doit être liquide et fluide. Dans le cas contraire, rajoutez de l'eau.",
    "Laissez reposer 30 minutes minimum. Versez la pâte dans les moules du gaufrier préalablement huilés. ",
    "Faites cuire 3 minutes environ en retournant le gaufrier à mi-cuisson.",
    "Mangez ces gaufres saupoudrées de sucre glace, avec de la confiture, du nutella, du sirop d'érable... ",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/gaufre.jpg'),
                      filename: 'gaufre.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 3
  recipe.preparation_time = 10
  recipe.person = 5
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Lait entier")
  recipe.ingredients << Ingredient.find_by_name("Farine de froment")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Sucre vanillé")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Eau")
  recipe.ingredients << Ingredient.find_by_name("Huile")
  recipe.ingredients << Ingredient.find_by_name("Levure chimique")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 250, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 60, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 5, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 75, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[9].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Gaufrier")
  recipe.utensils << Utensil.find_by_title("Fouet")

end

Recipe.create! do |recipe|
  recipe.title = "Soupe au Saumon Sauvage"
  recipe.description = "Un grand classique de la cuisine finlandaise, idéal pour réchauffer les longues soirées d'hiver!"
  recipe.steps = [
    "Preparez le bouillon : Bien rincer la tête du saumon et les arêtes, les mettre dans une grande casserole, ajoutez 1,5 litre d'eau froide. Ajouter les quatre-épices, le poivre blanc, le laurier et les tiges d'aneth. Faîtes bouillir puis continuez l'ébullition à feux doux pendant 20 minutes. Enlevez de temps en temps avec une cuillère la mousse qui se forme a la surface.",
    "Pendant ce temps, préparez les ingrédients pour la soupe. Coupez l'oignon en petits dés, épluchez et coupez les pommes de terre en dés d'environ 2 cm de coté, les carottes en rondelles. Coupez finement l'aneth. Enlevez (à l'aide d'une pince par exemple) les arêtes des filets de saumon. Coupez les filets en dés d'environ 2,5 x 2,5 cm.",
    "Faîtes fondre le beurre dans un grand récipient et ajoutez les oignons. Faîtes les revenir pendant quelques minutes afin qu'ils soient dorés (attention de ne pas les brûler !). Ajoutez ensuite les pommes de terre et les carottes, et faîtes revenir le tout encore quelques minutes.",
    "Egouttez le bouillon dans une grande casserole ou se trouvent les pommes de terre, les carottes et les oignons. Faîtes bouillir le tout pendant environ 15 minutes, jusqu'à ce que les pommes de terre soient bien cuites. Salez.",
    "Ajoutez la crème et le poisson, puis faîtes bouillir. Une fois à ebullition, ôtez du feu et mettez le couvercle. Le saumon devrait être à point après 4-5 minutes. Ajoutez généreusement l'aneth et servez avec du pain de seigle. Hyvää ruokahalua! (bon appétit en finnois)",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/soupSalmon.jpg'),
                      filename: 'soupSalmon.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 3
  recipe.preparation_time = 10
  recipe.person = 5
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Tête et arêtes d'un saumon")
  recipe.ingredients << Ingredient.find_by_name("Eau")
  recipe.ingredients << Ingredient.find_by_name("Poivre blanc")
  recipe.ingredients << Ingredient.find_by_name("Quatre-épices")
  recipe.ingredients << Ingredient.find_by_name("Aneth")
  recipe.ingredients << Ingredient.find_by_name("Laurier")
  recipe.ingredients << Ingredient.find_by_name("Filet de saumon sauvage")
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre ferme")
  recipe.ingredients << Ingredient.find_by_name("Carotte")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Crème entière")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Sel")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1500, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pincée(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pincée(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Botte(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 600, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[9].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[10].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[11].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Marmite")
  recipe.utensils << Utensil.find_by_title("Pince à désarêter")
end


Recipe.create! do |recipe|
  recipe.title = "Americain Cordon Bleu"
  recipe.description = "Très peu diététique pour le corps mais un vrai médicament pour le moral !"
  recipe.steps = [
    "Prendre la demie baguette et la couper dans le sens de la longueur",
    "Mettre le cordon bleu au four pendant 15 minutes jusqu'à ce qu'il soit baveux, puis y rajouter une ou deux tranches de cheddar.",
    "Mettre les frites au four ou dans une friteuse.",
    "Mettre de la mayonnaise à l'intérieur de la baguette ou une sauce de votre choix, puis y placer un petit lit de frites, déposer cordon bleu coupé en deux.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/americain.jpg'),
                      filename: 'americain.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 20
  recipe.preparation_time = 10
  recipe.person = 1
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Baguette de pain")
  recipe.ingredients << Ingredient.find_by_name("Mayonnaise")
  recipe.ingredients << Ingredient.find_by_name("Cordon bleu")
  recipe.ingredients << Ingredient.find_by_name("Cheddar")
  recipe.ingredients << Ingredient.find_by_name("Frites")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))

  recipe.utensils << Utensil.find_by_title("Four")
end

Recipe.create! do |recipe|
  recipe.title = "Purée de patate douce"
  recipe.description = "Délicieuse purée"
  recipe.steps = [
    "Éplucher et couper en gros morceau les patates douces, les faire cuire 15-20 min dans de l'eau bouillante salée.",
    "Une fois cuites, les égoutter y ajouter le beurre et la crème, saler, poivrer et les écraser avec un presse-purée.",
    "Déguster, c'est prêt !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/patatedouce.jpeg'),
                      filename: 'patatedouce.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 20
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Patate douce")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Crème semi-épaisse")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 900, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Presse-purée")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Économe")
end


Recipe.create! do |recipe|
  recipe.title = "Velouté de courgette"
  recipe.description = "Un velouté qui accompagne parfaitement un repas."
  recipe.steps = [
    "Epluchez les courgettes, coupez les en morceaux et mettez les avec le beurre dans un auto-cuiseur. Rajoutez le cube de bouillon et un verre d'eau.Fermez et laissez cuire 10 mn à partie du sifflement.",
    "Mixer le tout avec les trois cuillères à soupe de crème fraîche.",
    "Servir bien chaud.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/veloutecourgette.jpg'),
                      filename: 'veloutecourgette.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 20
  recipe.preparation_time = 20
  recipe.person = 4
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Courgette")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.ingredients << Ingredient.find_by_name("Bouillon de boeuf")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1500, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 10, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))

  recipe.utensils << Utensil.find_by_title("Auto-cuiseur")
  recipe.utensils << Utensil.find_by_title("Mixeur plongeant")
end

Recipe.create! do |recipe|
  recipe.title = "Ratatouille"
  recipe.description = "Excellent élément à manger seul ou à incorporer dans une autre recette"
  recipe.steps = [
    "Coupez les tomates pelées en quartiers, Les aubergines et les courgettes en rondelles. Emincez les poivrons en lamelles et l'oignon en rouelles.",
    "Chauffez 2 cuillères à soupe d'huile dans une poêle 	et faites-y fondre les oignons et les poivrons. Lorsqu'ils sont tendres, ajoutez les tomates, l'ail haché, le thym et le laurier. Salez, poivrez et laissez mijoter doucement à couvert durant 45 minutes. ",
    "Pendant ce temps, préparez les aubergines et les courgettes. Faites les cuire séparemment ou non dans l'huile d'olive pendant 15 minutes. ",
    "Vérifiez la cuisson des légumes pour qu'ils ne soient plus fermes. Ajoutez les alors au mélange de tomates et prolongez la cuisson sur tout petit feu pendant 10 min. ",
    "Salez et poivrez si besoin. ",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/ratatouille2.jpg'),
                      filename: 'ratatouille2.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 55
  recipe.preparation_time = 25
  recipe.person = 4
  recipe.difficulty = 7
  recipe.ingredients << Ingredient.find_by_name("Aubergine")
  recipe.ingredients << Ingredient.find_by_name("Courgette")
  recipe.ingredients << Ingredient.find_by_name("Poivron rouge")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Thym")
  recipe.ingredients << Ingredient.find_by_name("Laurier")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Sel")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 350, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 350, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 350, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 350, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 500, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Brin(s)"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Feuille(s)"))
  recipe.recipe_ingredients[9].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[10].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Saladier")
end


Recipe.create! do |recipe|
  recipe.title = "Tarte à la ratatouille"
  recipe.description = "Une tarte rapide à faire quand on a pas trop de temps mais qu'on veut manger des bons légumes."
  recipe.steps = [
    "Placer la pâte feuilleté dans le moule et y faire de léger trous dans le fond avec une fourchette",
    "Etaler la ratatouille de manière homogène dans le plat.",
    "Soupoudrer avec du Gruyère râpé pour recouvrir le plat.",
    "Mettre au four pendant 30 minutes au moins à 200 degrés chaleur tournante, jusqu'à ce que le gruyère soit très légèrement doré.",
    "Déguster !"
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tarteratatouille.jpg'),
                      filename: 'tarteratatouille.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 3
  recipe.preparation_time = 10
  recipe.person = 5
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Ratatouille")
  recipe.ingredients << Ingredient.find_by_name("Pâte feuilletée")
  recipe.ingredients << Ingredient.find_by_name("Gruyère râpé")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))

  recipe.utensils << Utensil.find_by_title("Plat à tarte")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Fourchette")
end


Recipe.create! do |recipe|
  recipe.title = "Courgette Farcie"
  recipe.description = "Excellent avec du riz"
  recipe.steps = [
    "Laver la courgette, en couper les extrémités, puis la couper en deux dans le sens de la longueur.",
    "Enlever les pépins du centre avec une cuillère, puis creuser la courgette. Récupérer la chair, la détailler en cubes.",
    "Faire revenir la chair quelques instants dans une poêle avec un peu d'huile d'olive, saler, poivrer.",
    "Dans une casserole, faire fondre l'oignon haché. Lorsqu'il est blond, ajouter le haché de bœuf, le laisser cuire (à couvert) en remuant souvent pour bien défaire la viande.",
    "Ajouter la boite de tomates pelées, couper grossièrement les tomates avec un couteau dans la casserole, ajouter 2 morceaux de sucre, une poignée d'herbes de Provence, le cube de bouillon de poule et l'ail pressé.",
    "Laisser mijoter le tout environ 15 min, saler, poivrer. La sauce doit être épaisse.",
    "Ajouter les dés de courgettes. Beurrer un plat allant au four, y déposer les courgettes côte à côte, les remplir de la préparation viande + cubes de courgettes.",
    "Parsemer de gruyère râpé, mettre au four moyen pendant 30 min.",
    "Régalez-vous !"
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/courgettefarcie.jpg'),
                      filename: 'courgettefarcie.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 30
  recipe.preparation_time = 25
  recipe.person = 5
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Courgette")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Ail")
  recipe.ingredients << Ingredient.find_by_name("Boeuf haché")
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Herbes de Provence")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Bouillon de volaille")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Gruyère râpé")


  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 250, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 480, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[9].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[10].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))

  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Couteau")
end


Recipe.create! do |recipe|
  recipe.title = "Crème patissière"
  recipe.description = "Délicieux à la cuillière nature ou avec quelques fruits, base de nombreuses recettes de patisserie."
  recipe.steps = [
    "Mélanger les jaunes d'oeuf avec le sucre. Battre au fouet jusqu'à que le mélange blanchisse.",
    "Ajouter la farine et bien mélanger avec le mélange sucre/oeufs. Ajouter 1/2 verre de lait pour que le mélange soit plus liquide.",
    "Mettre à chauffer le lait. Lorsque le lait est tiède (au bout de 3-4 min) ajouter le mélange oeufs/farine/sucre/lait et la gousse de vanille fendue et grattée avec ses graines.",
    "Mélanger au fouet jusqu'à ébullition.",
    "A ce moment là, votre crème sera déjà bien épaisse et vous pouvez arrêter la cuisson.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/patissiere.jpg'),
                      filename: 'patissiere.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 20
  recipe.person = 4
  recipe.difficulty = 8
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Gousse de vanille")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Litre(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))

  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Cuillère")
end


Recipe.create! do |recipe|
  recipe.title = "Pêche au thon"
  recipe.description = "Un sucré salé étonnant ! Excellent en début de repas."
  recipe.steps = [
    "Epluchez et coupez les pêches en 2.",
    "Mélangez le thon et la mayonnaise, puis disposez-les sur chaque moitié de pêche.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/thonpeche.jpg'),
                      filename: 'thonpeche.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 10
  recipe.person = 1
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Thon")
  recipe.ingredients << Ingredient.find_by_name("Pêche")
  recipe.ingredients << Ingredient.find_by_name("Mayonnaise")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3  , :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))

  recipe.utensils << Utensil.find_by_title("Couteau")
end


Recipe.create! do |recipe|
  recipe.title = "Salade Skagen"
  recipe.description = "Une recette typiquement Suèdoise à base de crevette que l'on sert sur du pain polaire ou des blinis."
  recipe.steps = [
    "Décortiquer les crevettes et les couper en morceaux.",
    "Mélanger les crevettes avec l'aneth, la crème, la mayonnaise, l'oignon, saler et poivrer un peu.",
    "Faire griller le pain de mie ou servir avec du pain suédois en entrée avec des rondelles de citron.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/skagen.jpg'),
                      filename: 'skagen.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 20
  recipe.person = 5
  recipe.difficulty = 2

  recipe.ingredients << Ingredient.find_by_name("Crevette")
  recipe.ingredients << Ingredient.find_by_name("Aneth")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche épaisse")
  recipe.ingredients << Ingredient.find_by_name("Mayonnaise")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Citron")
  recipe.ingredients << Ingredient.find_by_name("Pain de campagne")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 500, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))

  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Cuillère")
end

Recipe.create! do |recipe|
  recipe.title = "Tartiflette"
  recipe.description = "Le parfait repas entre amis pour passer un hiver au chaud!"
  recipe.steps = [
    "Eplucher les pommes de terre, les couper en dés, bien les rincer et les essuyer dans un torchon propre.",
    "Faire chauffer l'huile dans une poêle, y faire fondre les oignons.",
    "Lorsque les oignons sont fondus, ajouter les pommes de terre et les faire dorer de tous les côtés.",
    "Lorsqu'elles sont dorées, ajouter les lardons et finir de cuire.",
    "D'autre part, gratter la croûte du reblochon et le couper en deux (ou en quatre).",
    "Préchauffer le four à 200°C (thermostat 6-7) et préparer un plat à gratin en frottant le fond et les bords avec la gousse d'ail épluchée.",
    "Dans le plat à gratin, étaler une couche de pommes de terre aux lardons, disposer dessus la moitié du reblochon, puis de nouveau des pommes de terre. Terminer avec le reste du reblochon (croûte vers les pommes de terre).",
    "Enfourner pour environ 20 minutes de cuisson.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tartiflette.jpeg'),
                      filename: 'tartiflette.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 40
  recipe.preparation_time = 30
  recipe.person = 1
  recipe.difficulty = 7
  recipe.ingredients << Ingredient.find_by_name("Pomme de terre")
  recipe.ingredients << Ingredient.find_by_name("Lardons")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Reblochon")
  recipe.ingredients << Ingredient.find_by_name("Huile de tournesol")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")


  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Kilogramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.recipe_ingredients[7].recipe_quantity = nil

  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Poêle")
end



Recipe.create! do |recipe|
  recipe.title = "Pot au feu sans viande"
  recipe.description = "Un repas équilibré sans viande"
  recipe.steps = [
    "Préparer la cocotte avec de l'eau et les 2 cubes Knorr. L'eau doit recouvrir les légumes.",
    "Après avoir lavé et épluché les légumes, les couper en morceaux(moyens) et les mettre ensemble dans la cocotte.",
    "Laisser cuire à couvert 1 heure. Puis découvert, si la quantité d'eau est trop importante.",
    "Lorsqu'elles sont dorées, ajouter les lardons et finir de cuire.",
    "Rajouter des herbes si besoin, pour le parfum.",
    "Servir avec une viande cuite à part, du poulet grillé par exemple, le mélange est agréable.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
    RecipeCategory.find_by_name("Végétarien"),
    RecipeCategory.find_by_name("Vegan")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/pot-au-feu.jpeg'),
                      filename: 'pot-au-feu.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 1
  recipe.preparation_time = 15
  recipe.person = 1
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Carotte")
  recipe.ingredients << Ingredient.find_by_name("Navet")
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Huile de tournesol")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Herbes de Provence")
  recipe.ingredients << Ingredient.find_by_name("Thym")
  recipe.ingredients << Ingredient.find_by_name("Laurier")
  recipe.ingredients << Ingredient.find_by_name("Cube de bouillon")


  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.recipe_ingredients[8].recipe_quantity = nil
  recipe.recipe_ingredients[9].recipe_quantity = nil
  recipe.recipe_ingredients[10].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))

  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Saladier")
end

Recipe.create! do |recipe|
  recipe.title = "Ravioli maison"
  recipe.description = "Bien meilleur que ceux en boites!"
  recipe.steps = [
    "Battez les oeufs avec l'huile.",
    "Versez les oeufs battus au centre de la farine et pétrissez, jusqu'à ce que la pâte soit homogène.",
    "Continuez de pétrir pour développer l'élasticité de la pâte.",
    "Couvrez et laissez reposer la pâte entre 30 min et 1 h.",
    "Pendant ce temps, préparez la farce à raviolis: mixez la tranche de jambon et incorporez-la au fromage de chèvre frais. Assaisonnez de sel (peu), poivre et basilic.",
    "Etendez au rouleau à pâtisserie la pâte le plus finement possible.",
    "Couvrez-la et laissez-la reposer 1 h au moins.",
    "A l'aide d'un couteau, commencez à tracer les carrés sur la moitié de la pâte, pour faciliter la découpe des raviolis.",
    "Garnissez de la farce.",
    "Passez du jaune d'oeuf sur les parties qui seront à souder (bord des raviolis).",
    "Rabattez la seconde partie de pâte, et à l'aide de vos mains, soudez bien hermétiquement les raviolis autour de la farce.",
    "Découpez les raviolis à l'aide d'une molette dentelée ou à défaut d'un couteau aiguisé.",
    "Faites chauffer un grand volume d'eau salée, plongez les raviolis dedans et laissez cuire 8 à 10 min environ.",
    "Egouttez les raviolis et servez-les accompagnés de sauce de votre choix.",
    "Pour la farce vous pouvez mettre du parmesan ou de la chair à saucisse (accompagné de sauce tomate, excellent!).",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/ravioli-maison.jpeg'),
                      filename: 'ravioli-maison.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 10
  recipe.preparation_time = 20
  recipe.person = 1
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Jambon blanc")
  recipe.ingredients << Ingredient.find_by_name("Fromage de chèvre frais")
  recipe.ingredients << Ingredient.find_by_name("Basilic")


  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity = nil
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity = nil

  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Bol")
  recipe.utensils << Utensil.find_by_title("Saladier")
end

Recipe.create! do |recipe|
  recipe.title = "Flan coco"
  recipe.description = "Un flan rapide et délicieux"
  recipe.steps = [
    "Séparer les jaunes des blancs d'oeufs. Verser le lait concentré sucré avec la même dose de lait écrémé.",
    "Ajouter la noix de coco et mélanger le tout.",
    "Monter les blancs en neige. Les mélanger délicatement avec la pâte.",
    "Caraméliser le fond du moule.",
    "Faire cuire au four au bain-marie à thermostat 7-8 pendant 45 minutes.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/flan-coco.jpeg'),
                      filename: 'flan-coco.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 10
  recipe.preparation_time = 20
  recipe.person = 1
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Noix de coco")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Lait écremé")
  recipe.ingredients << Ingredient.find_by_name("Caramel")


  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 125, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity = nil

  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Fouet")
  recipe.utensils << Utensil.find_by_title("Four")
end

Recipe.create! do |recipe|
  recipe.title = "Tarte aux pommes"
  recipe.description = "Une tarte qui régalera vos enfants !"
  recipe.steps = [
    "Éplucher et découper en morceaux 4 Golden.",
    "Faire une compote : les mettre dans une casserole avec un peu d'eau (1 verre ou 2). Bien remuer. Quand les pommes commencent à ramollir, ajouter un sachet ou un sachet et demi de sucre vanillé. Ajouter un peu d'eau si nécessaire.",
    "Vous saurez si la compote est prête une fois que les pommes ne seront plus dures du tout. Ce n'est pas grave s'il reste quelques morceaux.",
    "Pendant que la compote cuit, éplucher et couper en quatre les deux dernières pommes, puis, couper les quartiers en fines lamelles (elles serviront à être posées sur la compote).",
    "Préchauffer le four à 210°C (thermostat 7).",
    "Laisser un peu refroidir la compote et étaler la pâte brisée dans un moule et la piquer avec une fourchette.",
    "Verser la compote sur la pâte et placer les lamelles de pommes en formant une spirale ou plusieurs cercles, au choix ! Disposer des lamelles de beurre dessus.",
    "Mettre au four et laisser cuire pendant 30 min max. Surveiller la cuisson. Vous pouvez ajouter un peu de sucre vanillé sur la tarte pendant que çà cuit pour caraméliser un peu.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tarte-pomme.jpg'),
                      filename: 'tarte-pomme.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 30
  recipe.preparation_time = 25
  recipe.person = 4
  recipe.difficulty = 3
  recipe.ingredients << Ingredient.find_by_name("Pâte brisée")
  recipe.ingredients << Ingredient.find_by_name("Pomme")
  recipe.ingredients << Ingredient.find_by_name("Sucre vanillé")
  recipe.ingredients << Ingredient.find_by_name("Beurre")


  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 30, :quantity_type => QuantityType.find_by_name("Gramme(s)"))


  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Four")
end

Recipe.create! do |recipe|
  recipe.title = "Galette des rois à la frangipane"
  recipe.description = "Attention a vos dents !"
  recipe.steps = [
    "Placer une pâte feuilletée dans un moule à tarte, piquer la pâte avec une fourchette.",
    "Dans un saladier, mélanger la poudre d'amandes, le sucre, les 2 oeufs et le beurre mou.",
    "Placer la pâte obtenue dans le moule à tarte et y cacher la fève.",
    "Recouvrir avec la 2ème pâte feuilletée, en collant bien les bords.",
    "Faire des dessins sur le couvercle et badigeonner avec le jaune d'oeuf.",
    "Enfourner pendant 20 à 30 min à 200°C (thermostat 6-7); vérifier régulièrement la cuisson !",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/galette-des-roi.jpeg'),
                      filename: 'galette-des-roi.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 10
  recipe.preparation_time = 20
  recipe.person = 1
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Pâte feuilletée")
  recipe.ingredients << Ingredient.find_by_name("Poudre d'amande")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Jaune d'oeuf")


  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 140, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 75, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))

  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Fourchette")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Cuillère")

end

Recipe.create! do |recipe|
  recipe.title = "Tarte tatin"
  recipe.description = "Le dessert au pommes que tout le monde aime!"
  recipe.steps = [
    "Préchauffer le four à 180°C (thermostat 6). Dans un moule à tarte rond antiadhésif, faire fondre le beurre directement sur le feu.",
    "Y ajouter le sucre fin",
    "et baisser le feu pour faire un caramel.",
    "Eplucher les 8 pommes golden entières. Les couper en deux et enlever le coeur sans défaire les moitiés. Disposer les pommes reconstituées en couronne dans le plat",
    "en mettre une ou deux au milieu. Aplatir avec une spatule de temps en temps, les pommes doivent pocher dans le caramel, qui ne doit pas devenir noir, mais tout juste doré.",
    "Saupoudrer les pommes de sucre vanillé et de cannelle.",
    "Sortir le tout du feu et recouvrir de pâte feuilletée en appuyant bien sur les bords.",
    "Mettre au four moyen pendant 35 à 40 minutes.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tarte-tatin.jpeg'),
                      filename: 'tarte-tatin.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 30
  recipe.preparation_time = 40
  recipe.person = 1
  recipe.difficulty = 7
  recipe.ingredients << Ingredient.find_by_name("Pomme")
  recipe.ingredients << Ingredient.find_by_name("Pâte feuilletée")
  recipe.ingredients << Ingredient.find_by_name("Sucre vanillé")
  recipe.ingredients << Ingredient.find_by_name("Canelle")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Sucre en poudre")



  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 8, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))


  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Fourchette")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Cuillère")

end

Recipe.create! do |recipe|
  recipe.title = "Avocat au thon"
  recipe.description = "Entrée végétarienne"
  recipe.steps = [
    "Coupez les avocats en deux. Ôtez les noyaux et découpez la chair en petits morceaux à l'aide d'une cuillère. Réservez.",
    "Emiettez le thon et mélangez-le avec la chair des avocats et la mayonnaise.",
    "Remplissez les avocats vides avec la préparation.",
    "Servez.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/avocat-au-thon.jpg'),
                      filename: 'avocat-au-thon.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 10
  recipe.person = 1
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Avocat")
  recipe.ingredients << Ingredient.find_by_name("Thon")
  recipe.ingredients << Ingredient.find_by_name("Mayonnaise")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value =>2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))

  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Cuillère")

end

Recipe.create! do |recipe|
  recipe.title = "Pain de poisson"
  recipe.description = "Plat de poisson savoureux."
  recipe.steps = [
    "Battre les oeufs en omelette.",
    "Ajouter la crème fraîche, le concentré de tomates, le gruyère puis le saumon coupé en moceaux (ou thon).",
    "Beurrer un moule à cake et y verser la préparation.",
    "Laisser cuire 1h15 au bain marie (Thermostat 6-7).",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/pain-de-poisson.jpeg'),
                      filename: 'pain-de-poisson.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 0
  recipe.preparation_time = 10
  recipe.person = 1
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Saumon")
  recipe.ingredients << Ingredient.find_by_name("Crème fraîche")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Concentré de tomate")
  recipe.ingredients << Ingredient.find_by_name("Gruyère râpé")

  recipe.recipe_ingredients[0].recipe_quantity = nil
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 20, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 70, :quantity_type => QuantityType.find_by_name("Gramme(s)"))

  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Fourchette")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Cuillère")
end

Recipe.create! do |recipe|
  recipe.title = "Terrine au saumon"
  recipe.description = "terrine de poisson très agréable en été."
  recipe.steps = [
    "Plonger pendant 5 mn les filets de saumon dans l'eau à ébullition. Egoutter, mettre dans une assiette et couper en petits morceaux, puis couper de la même manière le saumon fumé.",
    "Mixer les 2 saumons, y ajouter l'huile et le jus de citron. Ecraser le fromage à la fourchette, le saler et le poivrer.",
    "Ajouter le saumon au fromage, mettre dans une terrine, décorer avec l'aneth ou la ciboulette.",
    "Mettre au frais, servir le lendemain ou préparer le matin pour le soir.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/Terrine-aux-saumons.jpg'),
                      filename: 'Terrine-aux-saumons.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 10
  recipe.preparation_time = 15
  recipe.person = 1
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Saumon")
  recipe.ingredients << Ingredient.find_by_name("Saumon fumé")
  recipe.ingredients << Ingredient.find_by_name("Citron")
  recipe.ingredients << Ingredient.find_by_name("Fromage frais")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Ciboulette")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[5].recipe_quantity = nil

  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Fourchette")
  recipe.utensils << Utensil.find_by_title("Casserole")

end

Recipe.create! do |recipe|
  recipe.title = "Oeufs brouillés nature"
  recipe.description = "Des oeufs rapide à manger en entrée"
  recipe.steps = [
    "Dans une casserole à fond épais, casser les œufs puis ajouter le lait, 30 g de beurre, le sel et le poivre.",
    "Laisser cuire à feu très doux sans cesser de fouetter les œufs jusqu’à ce qu’ils prennent la consistance d’une crème.",
    "Hors du feu, incorporer le reste du beurre en continuant de fouetter.",
    "Déguster immédiatement.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/oeuf-brouiller.jpeg'),
                      filename: 'oeuf-brouiller.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 10
  recipe.preparation_time = 5
  recipe.person = 1
  recipe.difficulty = 5
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Sel")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 12, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 60, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity = nil

  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Fouet")
end

Recipe.create! do |recipe|
  recipe.title = "Bibimbap Corrén"
  recipe.description = "Bol de riz avec des légumes"
  recipe.steps = [
    "Commencer par faire cuire le riz comme indiqué sur le sachet.",
    "Mélanger le sucre, l'huile de sésame, le vinaigre de riz, l'ail que vous aurez écrasé et un petit morceau de gingembre découpé en petits morceaux dans un bol.",
    "Couper le boeuf en très fines lamelles, placer les dans la sauce et mettre au frais. ",
    "Couper les carottes et courgettes en fines lamelles. Émincer les champignons.",
    "Dans une grande poêle ou un grand wok, faire revenir les légumes avec un peu d'huile de tournesol et un peu de sauce soja.",
    "Faire cuire 2 minutes le boeuf dans un peu d'huile bien chaude.",
    "Ensuite, faire cuire les oeufs (oeufs au plat)",
    "Dresser l'ensemble dans des grands bols avec du riz au fond, des légumes autour, et la viande et/ou le riz au milieu.",
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/bibimbap.jpeg'),
                      filename: 'bibimbap.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 5
  recipe.preparation_time = 40
  recipe.person = 1
  recipe.difficulty = 6
  recipe.ingredients << Ingredient.find_by_name("Riz")
  recipe.ingredients << Ingredient.find_by_name("Carotte")
  recipe.ingredients << Ingredient.find_by_name("Courgette")
  recipe.ingredients << Ingredient.find_by_name("Germe de soja")
  recipe.ingredients << Ingredient.find_by_name("Champignon")
  recipe.ingredients << Ingredient.find_by_name("Pousse d'épinard")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Gingembre")
  recipe.ingredients << Ingredient.find_by_name("Steak de boeuf")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Sauce soja")
  recipe.ingredients << Ingredient.find_by_name("Huile de tournesol")
  recipe.ingredients << Ingredient.find_by_name("Sucre roux")
  recipe.ingredients << Ingredient.find_by_name("Huile de sésame")

  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[8].recipe_quantity =
    RecipeQuantity.create!(:value => 500, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[9].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[10].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[11].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[12].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[13].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))

  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Cuillère")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Bol")
  recipe.utensils << Utensil.find_by_title("Wok")
end

Recipe.create! do |recipe|
  recipe.title = "Milkshake à la banane"
  recipe.description = "Une boisson fraiche à déguster aussi bien l'après-midi pour un gouter entres amis ou après votre repas. Un délice !"
  recipe.steps = [
    "Pelez les bananes et coupez-les en rondelles. Assemblez-les avec la crème glacée à la vanille, le jus de citron et le lait dans le blender, puis mixez jusqu'à ce que le mélange soit bien mousseux.",
    "Versez dans de grands verres. Servez immédiatement et décorez avec des copaux de chocolat."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Boisson"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/milkshake_banane.jpg'),
                      filename: 'milkshake_banane.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 5
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Banane")
  recipe.ingredients << Ingredient.find_by_name("Glace vanille")
  recipe.ingredients << Ingredient.find_by_name("Jus de citron")
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Copeaux de chocolat")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Boule(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Centilitre(s)"))
  recipe.recipe_ingredients[4].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Blender")
end

Recipe.create! do |recipe|
  recipe.title = "Saumon à l'orange"
  recipe.description = "Plat sucré-salé apprécié des amateurs de poisson et d'agrumes."
  recipe.steps = [
    "Pour la sauce, éplucher et couper l'oignon en dés, le faire revenir dans l'huile pour qu'il devienne translucide. Ajouter le jus d'orange et faire réduire de moitié. Verser le vermouth et le fulet de poisson, faire une liaison en versant la fécule déléyaée avec un peu d'eau froide , saler, poivrer et assaisonner de poivre de Cayenne.",
    "Préchauffer le four à 120°C (chaleur trounante 100°C). Pour les épinards, éplucher et couper l'oignon en dés et le faire revenir dans l'huile pour qu'il devienne translucide. Ajouter les épinard et 50 ml d'eau. Faire décongeler à couvert à feu modéré. Saler, poivrer et assaisonner de noix de muscade.",
    "Pour le saumon, saler et poivrer les filets, les saisir 1 minute de chaque côté dans l'huile d'olive. Tapisser un plat allat au four de 4 rondelles d'orange. Déposer dessus les filets de saumon et couvrir chacun d'eux d'une rondelle d'orange. Faire cuire le poisson 10 minutes au four. Servir avec les épinards et la sauce. Accompagner de tagiatelles ou de riz."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/saumon_orange.jpg'),
                      filename: 'saumon_orange.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 15
  recipe.preparation_time = 20
  recipe.person = 4
  recipe.difficulty = 4
  recipe.ingredients << Ingredient.find_by_name("Oignon")
  recipe.ingredients << Ingredient.find_by_name("Huile")
  recipe.ingredients << Ingredient.find_by_name("Jus d'orange")
  recipe.ingredients << Ingredient.find_by_name("Vermouth")
  recipe.ingredients << Ingredient.find_by_name("Fumet de poisson")
  recipe.ingredients << Ingredient.find_by_name("Crème liquide")
  recipe.ingredients << Ingredient.find_by_name("Fécule")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Piment de Cayenne en poudre")
  recipe.ingredients << Ingredient.find_by_name("Épinard")
  recipe.ingredients << Ingredient.find_by_name("Muscade")
  recipe.ingredients << Ingredient.find_by_name("Saumon")
  recipe.ingredients << Ingredient.find_by_name("Orange")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.recipe_ingredients[8].recipe_quantity = nil
  recipe.recipe_ingredients[9].recipe_quantity = nil
  recipe.recipe_ingredients[10].recipe_quantity =
    RecipeQuantity.create!(:value => 300, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[11].recipe_quantity = nil
  recipe.recipe_ingredients[12].recipe_quantity =
    RecipeQuantity.create!(:value => 600, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[13].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Plat au four")
end

Recipe.create! do |recipe|
  recipe.title = "Escalope de poulet au muesli, compotée d'aubergines"
  recipe.description = "Plat simple et savoureux !"
  recipe.steps = [
    "Faites chauffer une poêle large et anti-adhérente sur un feu assez vif après y avoir incorporé un filé d'huile d'olive. Disposez des tranches d'Aubergines dans la poêle et faîtes griller la chair des deux côtés en pressant dessus avec une spatule sans toutefois les faire dégorger.",
  "Consassez les noix de pécan, noix de cajou et pignon de pin à l'aide d'un rouleau à patisserie",
    "Préparez la marinade avec le yaourt, le curry, le sel et le poivre.",
    "Plogez les escalopes de poulet dans la marinade puis dans le muesli.",
    "Faites chauffer la plancha à 200°C (th.7) avec un peu d'huilde d'olive. Faites cuire avec les escalopes entre 15 et 18 minutes et ajoutez les aubergines concassées avec un peu d'ail et les herbes hachées.",
    "Assaisonnez et servez."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Plat"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/escalopes_poulet_muesli_aubergines.jpg'),
                      filename: 'escalopes_poulet_muesli_aubergines.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 28
  recipe.preparation_time = 10
  recipe.person = 4
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Escalope de poulet")
  recipe.ingredients << Ingredient.find_by_name("Aubergine")
  recipe.ingredients << Ingredient.find_by_name("Yaourt nature")
  recipe.ingredients << Ingredient.find_by_name("Curry en poudre")
  recipe.ingredients << Ingredient.find_by_name("Gousse d'ail")
  recipe.ingredients << Ingredient.find_by_name("Ciboulette")
  recipe.ingredients << Ingredient.find_by_name("Persil")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.ingredients << Ingredient.find_by_name("Noix de pécan")
  recipe.ingredients << Ingredient.find_by_name("Noix de cajou")
  recipe.ingredients << Ingredient.find_by_name("Pignons de pin")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity = nil
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.recipe_ingredients[8].recipe_quantity = nil
  recipe.recipe_ingredients[9].recipe_quantity = nil
  recipe.recipe_ingredients[10].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[11].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[12].recipe_quantity =
    RecipeQuantity.create!(:value => 50, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.utensils << Utensil.find_by_title("Plancha")
  recipe.utensils << Utensil.find_by_title("Poêle")
  recipe.utensils << Utensil.find_by_title("Rouleau à pâtisserie")
end

Recipe.create! do |recipe|
  recipe.title = "Les cannelés bordelais"
  recipe.description = "Le canelé est un petit gâteau, spécialité du Bordelais, à pâte molle et tendre, parfumée au rhum et à la vanille, et recouverte d’une fine croûte caramélisée, en forme de petit cylindre strié."
  recipe.steps = [
    "Faire bouillir le lait avec le beurre et la gousse de vanille fendu et grattée. Mélanger la cassonade, la farine et les oeufs (2 oeufs et 2 jaunes) dans un saladier. Ajouter le lait progressivement puis le rhum. Réserver la pâte au frais, 48 heures au moins.",
    "Préchauffer le four à 180°C (th.6). Verser la pâte dans les moules à cannelés puis enfourner 1 heure."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/canneles_bordelais.jpg'),
                      filename: 'canneles_bordelais.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 60
  recipe.preparation_time = 15
  recipe.person = 15
  recipe.difficulty = 1
  recipe.ingredients << Ingredient.find_by_name("Lait")
  recipe.ingredients << Ingredient.find_by_name("Beurre")
  recipe.ingredients << Ingredient.find_by_name("Gousse de vanille")
  recipe.ingredients << Ingredient.find_by_name("Cassonade")
  recipe.ingredients << Ingredient.find_by_name("Farine")
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Jaune d'oeuf")
  recipe.ingredients << Ingredient.find_by_name("Rhum")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 500, :quantity_type => QuantityType.find_by_name("Millilitre(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 30, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 100, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.utensils << Utensil.find_by_title("Moule à cannelés")
  recipe.utensils << Utensil.find_by_title("Four")
  recipe.utensils << Utensil.find_by_title("Casserole")
  recipe.utensils << Utensil.find_by_title("Réfrigérateur")
end

Recipe.create! do |recipe|
  recipe.title = "Verrines de mousse de fruits"
  recipe.description = "Idéal pour faire manger des fruits aux enfants !"
  recipe.steps = [
    "Rincer rapidement les framboises sous l'eau fraiche. Réserver 50 grammes de fruits. Ecraser le reste à la fourchette. Ajouter le fromage blanc, le sucre glace et la vanille. Bien mélanger le tout.",
    "Monter les blancs en neige ferme. Les incorporer délicatement à la préparation précédente. Répartir la mousse de fruits dans 4 verrines. Décorer avec les fruits entiers et réserver au frais jusqu'au moment de la dégustation."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/verrines_mousse_fraise.jpg'),
                      filename: 'verrines_mousse_fraise.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 15
  recipe.person = 4
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Framboise")
  recipe.ingredients << Ingredient.find_by_name("Fromage blanc")
  recipe.ingredients << Ingredient.find_by_name("Sucre glace")
  recipe.ingredients << Ingredient.find_by_name("Extrait de vanille")
  recipe.ingredients << Ingredient.find_by_name("Blanc d'oeuf")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 450, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 400, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 4, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.utensils << Utensil.find_by_title("Verrine")
  recipe.utensils << Utensil.find_by_title("Fourchette")
end

Recipe.create! do |recipe|
  recipe.title = "Tiramisu aux fruits d'été"
  recipe.description = "Dessert très rafraîchissant, savoureux avec un repas assez lourd !"
  recipe.steps = [
    "Séparer les blancs des jaunes d'oeufs. Dans un saladier, mélanger la mascarpone avec les jaunes d'oeufs, l'édulcorant et le marsala",
    "Battre les blancs en neige avec une pincé de sel et les ajouter délicatement. Réserver au frais. Laver, sécher et équeter les fraises.",
    "Emietter les spéculoos et les déposer au fond de 6 coupes fines et hautes (ou verres à pied). Puis verser une couche de mascarpone, une couche de fruits rouge et terminer par une couche de mascarpone. Soupourdrer de cacao et placer au frais 2 heures minimum."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Dessert"),
    RecipeCategory.find_by_name("Végétarien")
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/tiramisu_fruit_ete.jpg'),
                      filename: 'tiramisu_fruit_ete.jpg', content_type: 'image/jpg')
  recipe.cooking_time = 0
  recipe.preparation_time = 15
  recipe.person = 4
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Oeuf")
  recipe.ingredients << Ingredient.find_by_name("Mascarpone")
  recipe.ingredients << Ingredient.find_by_name("Edulcorant")
  recipe.ingredients << Ingredient.find_by_name("Marsala")
  recipe.ingredients << Ingredient.find_by_name("Fraise")
  recipe.ingredients << Ingredient.find_by_name("Spéculoos")
  recipe.ingredients << Ingredient.find_by_name("Framboise")
  recipe.ingredients << Ingredient.find_by_name("Cacao")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 200, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 40, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[5].recipe_quantity =
    RecipeQuantity.create!(:value => 6, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[6].recipe_quantity =
    RecipeQuantity.create!(:value => 150, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[7].recipe_quantity =
    RecipeQuantity.create!(:value => 1, :quantity_type => QuantityType.find_by_name("Cuillère(s) à café"))
  recipe.recipe_ingredients[8].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Saladier")
  recipe.utensils << Utensil.find_by_title("Batteur")
  recipe.utensils << Utensil.find_by_title("Verrine")
end

Recipe.create! do |recipe|
  recipe.title = "Millefeuille d'été"
  recipe.description = "Entrée savoureuse qui équilibre parfaitement les légumes du Soleil et la viande des grisons !"
  recipe.steps = [
    "Rincer les légumes. Les découper en tranches fines de 0,5 centimètres d'épaisseur. Garder les chapeaux des tomates. A l'aide du spray, faire quelques pulvérisations d'huile sur les tranches de légumes. Allumer le gril.",
    "Faire griller les tranches de légumes ainsi que les chapeaux des tomates, saler, poivrer. Dresser sur chaque assiette : 1 tranche d'aubergine, 1 tranche de tomate et une demi-tranche de viande des grisons, répéter l'opération jusqu'à épuisement des ingrédients. Terminer par le chapeau de la tomate. Couper le parmesan en copeaux.",
    "Déposer harmonieusement, autour du millefeuille 1 cuillerée à café d'huile d'olive par assiette, du persil ciselé et quelques copeaux de parmesan."
  ]
  recipe.recipe_categories << [
    RecipeCategory.find_by_name("Entrée"),
  ]
  recipe.image.attach(io: File.open('app/assets/images/recipes_examples/millefeuille_ete.jpeg'),
                      filename: 'millefeuille_ete.jpeg', content_type: 'image/jpeg')
  recipe.cooking_time = 0
  recipe.preparation_time = 15
  recipe.person = 4
  recipe.difficulty = 2
  recipe.ingredients << Ingredient.find_by_name("Tomate")
  recipe.ingredients << Ingredient.find_by_name("Aubergine")
  recipe.ingredients << Ingredient.find_by_name("Huile d'olive")
  recipe.ingredients << Ingredient.find_by_name("Parmesan")
  recipe.ingredients << Ingredient.find_by_name("Viande des Grisons")
  recipe.ingredients << Ingredient.find_by_name("Persil")
  recipe.ingredients << Ingredient.find_by_name("Sel")
  recipe.ingredients << Ingredient.find_by_name("Poivre")
  recipe.recipe_ingredients[0].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[1].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Pièce(s)"))
  recipe.recipe_ingredients[2].recipe_quantity =
    RecipeQuantity.create!(:value => 2, :quantity_type => QuantityType.find_by_name("Cuillère(s) à soupe"))
  recipe.recipe_ingredients[3].recipe_quantity =
    RecipeQuantity.create!(:value => 30, :quantity_type => QuantityType.find_by_name("Gramme(s)"))
  recipe.recipe_ingredients[4].recipe_quantity =
    RecipeQuantity.create!(:value => 3, :quantity_type => QuantityType.find_by_name("Tranche(s)"))
  recipe.recipe_ingredients[5].recipe_quantity = nil
  recipe.recipe_ingredients[6].recipe_quantity = nil
  recipe.recipe_ingredients[7].recipe_quantity = nil
  recipe.utensils << Utensil.find_by_title("Couteau")
  recipe.utensils << Utensil.find_by_title("Cuillère")
end

# rubocop:enable all
