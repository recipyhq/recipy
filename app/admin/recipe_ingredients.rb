ActiveAdmin.register RecipeIngredient do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :recipe_quantity_id, :ingredient_ids => []

  includes :recipe_quantity, :ingredient

  index do
    selectable_column
    id_column
    column :ingredient
    column :recipe_quantity
    actions
  end

  show do
    attributes_table do
      row :ingredient
      row :recipe_quantity
      row :created_at
    end
  end

  controller do
    def update
      @recipe_ingredient = RecipeIngredient.find(params[:id])
      q = RecipeQuantity.find(params[:recipe_ingredient][:recipe_quantity_id])
      @recipe_ingredient.recipe_quantity = q
      super
    end
  end

  form do |f|
    f.inputs "Add / Edit Recipe ingredient" do
      f.input :recipe_quantity,
              collection: RecipeQuantity.includes(:quantity_type).all.map { |t|
                [t.value.to_s + " - " + t.quantity_type.name, t.id]
              },
              as: :select
    end
    actions
  end
end
