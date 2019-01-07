json.extract! recipe, :id, :title, :score, :step, :time, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
