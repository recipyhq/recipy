ActiveAdmin.register Ingredient do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :name, :description, :quantity_equivalency_ids => [], :ingredient_tag_ids => []

  includes :related_quantity_equivalencies,
           :quantity_equivalencies => :quantity_type

  controller do
    def scoped_collection
      Ingredient.includes(:quantity_equivalencies => :quantity_type)
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :ingredient_tag_ids do |ingredient|
      table_for ingredient.ingredient_tags.order('name ASC') do
        column do |elem|
          elem.name
        end
      end
    end
    column :quantity_equivalency_ids do |ingredient|
      table_for ingredient.quantity_equivalencies do
        column do |elem|
          elem.gram_equivalency.to_s + "g - " + elem.quantity_type.name
        end
      end
    end
    column :created_at
    column :updated_at
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
      table_for ingredient.quantity_equivalencies do
        column "Quantity equivalencies" do |quantity_equiv|
          quantity_equiv.gram_equivalency.to_s + "g - " + quantity_equiv.quantity_type.name
        end
      end
    end
  end

  form do |f|
    f.inputs "Add / Edit Ingredient" do
      f.input :name
      f.input :description
      f.input :ingredient_tags, :as => :check_boxes
      f.input :quantity_equivalencies, :as => :check_boxes
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
