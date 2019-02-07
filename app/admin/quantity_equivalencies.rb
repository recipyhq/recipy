ActiveAdmin.register QuantityEquivalency do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :gram_equivalency

  includes :quantity_type

  index do
    selectable_column
    id_column
    column :gram_equivalency
    column :quantity_type do |i|
      puts "_______________________"
      puts i.inspect
      puts "_______________________"
      table_for i.quantity_type do
        column "Quantity Types" do |elem|
          elem.name
        end
      end
    end
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Add / Edit Quantity Equivalency" do
      f.input :gram_equivalency
      f.input :id, collection: QuantityType.pluck(:id, :name), as: :select
    end
    actions
  end
end
