ActiveAdmin.register Recipe do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :title, :description, :step, :difficulty, :cooking_time, :preparation_time,
                :view, :score, :image, :person, :steps_raw,
                :utensil_ids => [], :ingredient_ids => [],
                :recipe_category_ids => [], :steps => [], :recipe_ingredients_attributes => {}

  includes :ingredients, :recipe_categories, :image_attachment => :blob

  controller do
    def scoped_collection
      Recipe.includes(:image_attachment => :blob)
    end

    def index
      Bullet.enable = false
      Recipe.includes(:image_attachment => :blob)
      super
    end

    def edit
      Bullet.enable = false
      Recipe.includes(:ingredients, :recipe_ingredient => :ingredient)
      super
    end

    def create
      recipe_params = params.require(:recipe).permit(:title, :description, :person, :image,
                                                     :cooking_time, :preparation_time, :steps_raw,
                                                     :difficulty,
                                                     :steps => [],
                                                     :recipe_category_ids => [],
                                                     :utensil_ids => [],
                                                     :recipe_ingredients_attributes => {})
      new_ingredients = recipe_params[:recipe_ingredients_attributes]
      if new_ingredients.nil?
        flash[:html_alert] = t('recipe.creation.missing_ingredients')
      else
        steps = recipe_params[:steps_raw]
        split_steps = steps.split("\n")
        recipe_params[:steps] = split_steps.collect(&:strip)
        recipe_params.delete(:steps_raw)
        recipe_params.delete(:recipe_ingredients_attributes)
        new_recipe = Recipe.new(recipe_params)
        new_ingredients.each do |elem|
          new_recipe.ingredients << Ingredient.find(elem[1].values[0])

          recipe_quantity = RecipeQuantity.new(value: elem[1].values[1].values[0])
          recipe_quantity.quantity_type = QuantityType.find(elem[1].values[1].values[1])
          recipe_quantity.save

          last = new_recipe.recipe_ingredients.last
          last.recipe_quantity = recipe_quantity
        end
        new_recipe.save
        redirect_to admin_recipes_url
      end
    end

    def update
      steps = params[:recipe][:steps_raw]
      split_steps = steps.split("\n")
      params[:recipe][:steps] = split_steps.collect(&:strip)
      params[:recipe].delete(:steps_raw)
      super
    end
  end

  index do
    selectable_column
    id_column
    column :title
    column :view
    column :score
    unless :image.nil?
      column :image do |ad|
        unless ad.image.attachment.nil?
          image_tag url_for(ad.image.variant(resize: '100x100'))
        end
      end
    end
    column :description
    column :steps
    column :difficulty
    column :person
    column :cooking_time
    column :preparation_time
    column :ingredient do |recipe|
      table_for recipe.ingredients.order('name ASC') do
        column do |elem|
          elem.name
        end
      end
    end
    column :utensil do |recipe|
      table_for recipe.utensils.order('title ASC') do
        column do |elem|
          elem.title
        end
      end
    end
    column :recipe_categories do |recipe|
      table_for recipe.recipe_categories do
        column do |elem|
          elem.name
        end
      end
    end
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :title
      row :view
      row :score
      row :description
      unless :image.nil?
        row :image do |ad|
          unless ad.image.attachment.nil?
            image_tag url_for(ad.image.variant(resize: '100x100'))
          end
        end
      end
      row :steps
      row :difficulty
      row :person
      row :cooking_time
      row :preparation_time
      table_for recipe.ingredients.order('name ASC') do
        column "Ingredients" do |elem|
          elem.name
        end
      end
      table_for recipe.utensils.order('title ASC') do
        column "Utensils" do |elem|
          elem.title
        end
      end
      table_for recipe.recipe_categories do
        column "Category" do |elem|
          elem.name
        end
      end
    end
  end

  form do |f|
    f.inputs "Add/Edit Recipe" do
      f.input :title
      f.input :description
      f.input :steps_raw, as: :text
      f.input :difficulty
      f.input :image, :as => :file
      f.input :person
      f.input :cooking_time
      f.input :preparation_time
      f.input :recipe_categories, as: :check_boxes
      f.has_many :recipe_ingredients, new_record: true do |ff|
        ff.input :ingredient, :collection => Ingredient.all
        ff.has_many :recipe_quantity, new_record: true do |fff|
          fff.input :value
          fff.input :quantity_type, :collection => QuantityType.all
        end
      end
      f.input :utensils, :as => :check_boxes
    end
    f.semantic_errors
    actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
