ActiveAdmin.register Recipe do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :title, :description, :step, :difficulty, :cooking_time, :preparation_time,
                :view, :score, :image,
                :utensil_ids => [], :ingredient_ids => [],
                :recipe_category_ids => [], :steps => []

  includes :recipe_categories, :image_attachment => :blob

  controller do
    def scoped_collection
      Recipe.includes(:image_attachment => :blob)
    end

    def create
      steps = params[:recipe][:steps_raw]
      split_steps = steps.split("\n")
      params[:recipe][:steps] = split_steps.collect(&:strip)
      super
    end

    def update
      steps = params[:recipe][:steps_raw]
      split_steps = steps.split("\n")
      params[:recipe][:steps] = split_steps.collect(&:strip)
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
    column :step
    column :steps_raw
    column :difficulty
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
      row :step
      row :steps_raw
      row :difficulty
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
      f.input :step
      f.input :steps_raw, as: :text
      f.input :difficulty
      f.input :image, :as => :file
      f.input :cooking_time
      f.input :preparation_time
      f.input :recipe_categories, as: :check_boxes
      f.input :ingredients, :as => :check_boxes
      f.input :utensils, :as => :check_boxes
    end
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
