ActiveAdmin.register RecipeQuantity do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :value, :quantity_type_id

  includes :quantity_type

  index do
    selectable_column
    id_column
    column :value
    column :quantity_type
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :value
      row :quantity_type
      row :created_at
    end
  end

  controller do
    def create
      @recipe_quantity = RecipeQuantity.new
      q = QuantityType.find(params[:recipe_quantity][:quantity_type_id])
      @recipe_quantity.quantity_type = q
      @recipe_quantity.value = params[:recipe_quantity][:value]
      @recipe_quantity.created_at = Time.now
      @recipe_quantity.updated_at = Time.now
      super
    end
  end

  form do |f|
    f.inputs "Add / Edit Quantity Equivalency" do
      f.input :value
      f.input :quantity_type, collection: QuantityType.all, as: :select
    end
    actions
  end
end
