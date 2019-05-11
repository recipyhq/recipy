ActiveAdmin.register PointOfSale do
  permit_params :name, :description, :market_type, :address_attributes => [
    :entilted, :city, :zip,
    :state, :country, :phone,
  ]
  includes :address, products: [:ingredient, price: [:quantity_type]]

  controller do
    def show
      Bullet.enable = false
    end

    def new
      @point_of_sale = PointOfSale.new(address: Address.new)
    end

    def create
      @pos_params = params.require(:point_of_sale).permit(:name, :description,
                                                          :market_type,
                                                          address_attributes:
                                                            [
                                                              :entilted,
                                                              :city, :zip, :state,
                                                              :country, :phone,
                                                            ])
      new_address = @pos_params[:address_attributes]
      if new_address.nil?
        flash[:html_alert] = t('point_of_sale.missing_address')
      else
        if Address.create!(new_address)
          @pos_params.delete(:address_attributes)
          new_point_of_sale = PointOfSale.new(@pos_params)
          new_point_of_sale.address = Address.last
          new_point_of_sale.save!
          flash[:notice] = "The new point of sale has been created !"
          redirect_to admin_point_of_sales_path
        else
          flash[:html_alert] = t('point_of_sale.wrong_address')
        end
      end
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :products do |sale|
      table_for sale.products do
        column do |elem|
          elem.ingredient.name + " - " +
            elem.price.value.to_s + "€ / " + elem.price.quantity_type.name
        end
      end
    end
    column :address do |sale|
      unless sale.address.nil?
        columns sale.address.entilted + " " + sale.address.zip +
                  " " + sale.address.city
      end
    end
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :products do |sale|
        table_for sale.products do
          column "Products" do |elem|
            elem.ingredient.name + " - " +
              elem.price.value.to_s + "€ / " + elem.price.quantity_type.name
          end
        end
      end
      row :products
      row :address do |sale|
        columns sale.name + " (" + sale.address.entilted + " " + sale.address.zip +
                  " " + sale.address.city + ")"
      end
      row :created_at
    end
  end

  form do |f|
    f.inputs "Add / Edit Point of Sale" do
      f.input :name
      f.input :description
      f.input :market_type, :collection => %w(Magasin Domicile Marché Coopérative)
      f.has_many :address, new_record: true do |ff|
        ff.input :entilted
        ff.input :city
        ff.input :zip
        ff.input :state
        ff.input :country
        ff.input :phone
      end
      actions
    end
  end
end
