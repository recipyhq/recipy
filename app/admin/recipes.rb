ActiveAdmin.register Recipe do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :title, :description, :step, :difficulty, :time, :view, :score, :image,
                :utensil_ids => [], :ingredient_ids => []

  includes :image_attachment

  index do
    selectable_column
    id_column
    column :title
    column :view
    column :score
    unless :image.nil?
      column :image do |ad|
        unless ad.image.attachment.nil?
          image_tag url_for(ad.image.variant(resize: '30x30'))
        end
      end
    end
    column :description
    column :step
    column :difficulty
    column :time
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
      row :difficulty
      row :time
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
    end
  end

  form do |f|
    f.inputs "Add/Edit Recipe" do
      f.input :title
      f.input :description
      f.input :step
      f.input :difficulty
      f.input :image, :as => :file
      f.input :time
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
