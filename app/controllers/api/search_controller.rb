# rubocop:disable all
class Api::SearchController < Api::BaseController
  before_action :skip_authorization
  @@per_page = 24
  @@sort_possibilities = [
    ["by_nothing", "no"], ["by_note_desc", 'note_desc'],
    ["by_note_asc", 'note_asc'],
  ]

  def index
    skip_policy_scope
    @page = (params['page'] || 1).to_i.abs
    @time_max = Recipe.maximum("cooking_time") || 60
    @ingredients_select = Ingredient.order(:name).all.where(:confirmed => true).map { |v| [v.name, v.id] }.to_a
    search_params = params['search'] || {}
    @search_query = search_params['q'] || ""
    @search_difficulty = search_params['difficulty'] || nil
    @search_ingredients = search_params['ingredients'] ? search_params['ingredients'].map{ |i| i.length > 0 ? i.to_i : nil }.reject! { |x| x.nil? } : []
    @search_time = search_params['cooking_time'] || nil
    @sort = search_params['sort'] || 'no'
    @sort_possibilities = @@sort_possibilities
    @recipes = Recipe.search_by_fields(@search_query, ['title', 'description', 'step'])
    @recipes = @recipes.by_value_max(:difficulty, @search_difficulty)
    @recipes = @recipes.by_value_max(:cooking_time, @search_time)
    @recipes = @recipes.have_ingredients(@search_ingredients)
    if @sort == 'note_desc' || @sort == 'note_asc'
      @recipes = @recipes.select("recipes.*, COALESCE(avg(recipe_scores.value), 0) as score").left_joins(:recipe_scores).group("recipes.id").order(score: (@sort == 'note_desc') ? :desc : :asc)
    end
    @page_max = (@recipes.uniq.count.to_f / @@per_page.to_f).ceil
    @page_max = @page_max > 0 ? @page_max : 1
    @recipe_count = @recipes.uniq.count
    @recipes = @recipes.order(:title).to_page(@page, @@per_page).includes(:image_attachment => :blob).all

    values = {
      page: @page,
      page_max: @page_max,
      ingredients: @ingredients_select,
      time_max: @time_max,
      sort_possibilities: @@sort_possibilities,
      sort: @sort,
      search: {
        query: @search_query,
        difficulty: @search_difficulty,
        ingredients: @search_ingredients,
        cooking_time: @search_time,
      },
      recipes: @recipes.as_json(methods: %i(image_url)),
    }

    render json: values.as_json
  end
end
# rubocop:enable all
