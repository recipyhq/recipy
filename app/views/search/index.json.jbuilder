json.page @page
json.page_max @page_max
json.ingredients @ingredients_select
json.time_max @time_max
json.search do
    json.query @search_query
    json.difficulty @search_difficulty
    json.ingredients @search_ingredients
    json.time @search_time
end
json.recipes @recipes, partial: 'recipes/recipe', as: :recipe
