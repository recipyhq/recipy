class Api::SearchController < ApplicationController
  before_action :skip_authorization
  @@per_page = 20

  def index
    skip_policy_scope
    @page = (params['page'] || 1).to_i.abs;
    @time_max = Recipe.maximum("time")
    @ingredients_select = Ingredient.all.map{ |v| [v.name, v.id] }.to_a
    search_params = params['search'] || {}
    @search_query = search_params['q'] || ""
    @search_difficulty = search_params['difficulty'] || nil
    @search_ingredients = search_params['ingredients'] || []
    @search_time = search_params['time'] || nil
    @recipes = Recipe.search_by_fields(@search_query, ['title', 'description', 'step'])
    @recipes = @recipes.by_value_max(:difficulty, @search_difficulty)
    @recipes = @recipes.by_value_max(:time, @search_time)
    @recipes = @recipes.have_ingredients(@search_ingredients)
    @page_max = (@recipes.uniq.count / @@per_page).ceil
    @page_max = @page_max > 0 ? @page_max : 1;
    @recipes = @recipes.to_page(@page, @@per_page).includes(:image_attachment)

    values = {
      page: @page,
      page_max: @page_max,
      ingredients: @ingredients_select,
      time_max: @time_max,
      search: {
        query: @search_query,
        difficulty: @search_difficulty,
        ingredients: @search_ingredients,
        time: @search_time
      },
      recipes: @recipes.as_json(methods: %i(image_url))
    }

    render json: values.as_json
  end
end
