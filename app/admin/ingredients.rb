ActiveAdmin.register Ingredient do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :name, :description, :ingredient_tag_ids => []

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :created_at
    column :updated_at
    column :ingredient_tag_ids do |ingredient|
      table_for ingredient.ingredient_tags.order('name ASC') do
        column do |elem|
          elem.name
        end
      end
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :created_at
      row :updated_at
      table_for ingredient.ingredient_tags.order('name ASC') do
        column "Tags" do |tag|
          tag.name
        end
      end
    end
  end

  form do |f|
    f.inputs "Add / Edit Ingredient" do
      f.input :name
      f.input :description
      f.input :ingredient_tags, :as => :check_boxes
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
