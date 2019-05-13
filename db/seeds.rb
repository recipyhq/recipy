# rubocop:disable all
if Rails.env.development?
  Administrator.create! do |admin|
    admin.email = 'admin@recipy.com'
    admin.password = 'password'
    admin.password_confirmation = 'password'
  end
end

ProductTag.create! do |product_tag|
  product_tag.name = "Bio"
end

ProductTag.create! do |product_tag|
  product_tag.name = "Sans Pesticide"
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

# Quantity Type

QuantityType.create! do |quantity_type|
  quantity_type.name = "Tranche(s)"
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

# Quantity Equivalencies

# For Semoule ingredient
QuantityEquivalency.create! do |quantity_equivalency|
  quantity_equivalency.gram_equivalency = 12
  quantity_equivalency.quantity_type = QuantityType.find_by_name("Cuillère(s) à soupe")
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
  ingredient.name = "Jambon blanc"
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Piment de cayenne en poudre"
  ingredient.confirmed = true
  ingredient.description = "Piment particulièrement piquant."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Épice"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Oeuf"
  ingredient.confirmed = true
  ingredient.description = "Riche source de protéïne, il est un aliment de base pour préparer de bons gâteaux."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Parmesan"
  ingredient.confirmed = true
  ingredient.description = "D'origine italienne, il s'accomode parfaitement avec n'importe quel plat de pâtes."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Lardons"
  ingredient.confirmed = true
  ingredient.description = "Produit à base de porc"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
    IngredientTag.find_by_name("Bon marché"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Huile d'olive extra vierge"
  ingredient.confirmed = true
  ingredient.description = "Corps gras utlisé pour les salades et les assaisonnements."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Corps gras"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Blanc de poulet"
  ingredient.confirmed = true
  ingredient.description = "Partie la plus tendre du poulet et ingrédient de base dans de nombreux pas."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
    IngredientTag.find_by_name("Bon marché"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pain de mie"
  ingredient.confirmed = true
  ingredient.description = "Pain à la mie très blanche caractérisé par l'absence de croûte croustillante"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Féculent"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Lait"
  ingredient.confirmed = true
  ingredient.description = "Produit de base pour tous types de gâteaux."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Jus de citron"
  ingredient.confirmed = true
  ingredient.description = "Jus extrait d'un citron."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Corps gras"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Moutarde de Dijon"
  ingredient.confirmed = true
  ingredient.description = "Sauce piquante et spécialité de la ville de Dijon"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
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
end

# Ingredients for Quiche au saumon
Ingredient.create! do |ingredient|
  ingredient.name = "Pâte brisée"
  ingredient.confirmed = true
  ingredient.description = "Élément de base pour tous types de tartes et de gâteaux"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Saumon"
  ingredient.confirmed = true
  ingredient.description = "Poisson gras riche en oméga 3"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Poisson"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Gruyère"
  ingredient.confirmed = true
  ingredient.description = "Le gruyère est un fromage suisse qui tire son nom de la Gruyère"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Produit laitier"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Crevette"
  ingredient.confirmed = true
  ingredient.description = "Crustacé très commun"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Crustacé"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Ciboulette"
  ingredient.confirmed = true
  ingredient.description = "Herbe très savoureuse pour accompagner du poisson"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Herbe"),
    IngredientTag.find_by_name("Bon marché"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Jambon cru"
  ingredient.confirmed = true
  ingredient.description = "Aliment spécialité du Sud-Ouest et élément indispensable à la charcuterie."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Viande"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Jaune d'oeuf"
  ingredient.confirmed = true
  ingredient.description = "C'est l'élément central de l'oeuf. Il est très riche en protéïnes."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
    IngredientTag.find_by_name("Végétarien"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Blanc d'oeuf"
  ingredient.confirmed = true
  ingredient.description = "Base dans la patisserie. Il est utile dans beaucoup de plats."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Végétarien"),
    IngredientTag.find_by_name("Bon marché"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Extrait de vanille"
  ingredient.confirmed = true
  ingredient.description = "Liquide extrait de la vanille. Il est très sucré et possède un goût très fort"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
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
end

#Ingredients for Salade d'avocat

Ingredient.create! do |ingredient|
  ingredient.name = "Feta"
  ingredient.confirmed = true
  ingredient.description = "Fromage de brebis très populaire en Grêce. Il est très frais et s'accommode dans tous types de salade."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Pignons de pin"
  ingredient.confirmed = true
  ingredient.description = "Graine issue du pin. Permet d'ajouter du croquant dans une recette, une fois torrifier."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Persil"
  ingredient.confirmed = true
  ingredient.description = "Herbe aromatique très classique dans la cuisine."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Vegan"),
    IngredientTag.find_by_name("Végétarien"),
  ]
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
end

# Ingredient for palmier au basilic

Ingredient.create! do |ingredient|
  ingredient.name = "Pâte feuilletée"
  ingredient.confirmed = true
  ingredient.description = "Base dans les tartes et les amuse-bouches."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Bon marché"),
  ]
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
end

Ingredient.create! do |ingredient|
  ingredient.name = "Cheddar"
  ingredient.confirmed = true
  ingredient.description = "Spécialité fromgère anglaise. Fait à base de lait de vache."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Produit laitier"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Bière brune"
  ingredient.confirmed = true
  ingredient.description = "Spécialité belge"
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Boisson"),
  ]
end

Ingredient.create! do |ingredient|
  ingredient.name = "Sauce Worcestershire"
  ingredient.confirmed = true
  ingredient.description = "Sauce anglaise à base de poisson."
  ingredient.ingredient_tags << [
    IngredientTag.find_by_name("Condiment"),
  ]
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
  utensil.title = "Plat à tarte"
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

# Recipes

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
  recipe.ingredients << Ingredient.find_by_name("Piment de cayenne en poudre")
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
    "Préchauffer le four sur thermostat 8. Mettre la pâte brisée dans un plat à tarte de 30 cm de diamètre environ et la piquer à la fourchette.",
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
  recipe.utensils << Utensil.find_by_title("Plat à tarte")
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

# rubocop:enable all
