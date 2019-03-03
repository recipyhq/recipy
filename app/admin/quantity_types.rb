ActiveAdmin.register QuantityType do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :name

  form do |f|
    f.inputs "Add / Edit Quantity type" do
      f.input :name
    end
    actions
  end
end
