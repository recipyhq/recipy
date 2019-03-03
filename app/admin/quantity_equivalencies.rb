ActiveAdmin.register QuantityEquivalency do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :gram_equivalency, :quantity_type_id

  includes :quantity_type

  index do
    selectable_column
    id_column
    column :gram_equivalency
    column :quantity_type
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :gram_equivalency
      row :quantity_type
      row :created_at
    end
  end

  controller do
    def create
      @quantity_equivalency = QuantityEquivalency.new
      q = QuantityType.find(params[:quantity_equivalency][:quantity_type_id])
      @quantity_equivalency.quantity_type = q
      @quantity_equivalency.gram_equivalency = params[:quantity_equivalency][:gram_equivalency]
      @quantity_equivalency.created_at = Time.now
      @quantity_equivalency.updated_at = Time.now
      super
    end
  end

  form do |f|
    f.inputs "Add / Edit Quantity Equivalency" do
      f.input :gram_equivalency
      f.input :quantity_type, collection: QuantityType.all, as: :select
    end
    actions
  end
end
