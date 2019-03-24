ActiveAdmin.register PointOfSale do
  permit_params :name, :description, :market_type, address: [
    :entilted, :city, :zip,
    :state, :country, :phone,
  ]
  includes :address, products: [:ingredient, price: [:quantity_type]]

  index do
    selectable_column
    id_column
    column :name
    column :products do |sale|
      table_for sale.products do
        column do |elem|
          elem.ingredient.name + " - " +
            elem.price.value.to_s + "€ /" + elem.price.quantity_type.name
        end
      end
    end
    column :address do |sale|
      columns sale.name + " (" + sale.address.entilted + " " + sale.address.zip +
                " " + sale.address.city + ")"
    end
    column :created_at
    actions
  end
end
