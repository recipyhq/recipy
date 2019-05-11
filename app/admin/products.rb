ActiveAdmin.register Product do
  permit_params :product_tag_ids, :ingredient_id, :point_of_sale_ids => [],
                                                  price_attributes: [:value, :quantity_type_id]

  includes :ingredient, :price => [:quantity_type]

  controller do
    def index
      Bullet.enable = false
      super
    end

    def create
      product_params = params.require(:product).permit(:point_of_sale_ids => [],
                                                       :ingredient_id => [],
                                                       :product_tag_ids => [],
                                                       :price_attributes => {})
      new_price = product_params[:price_attributes]
      ingredient_id = product_params[:ingredient_id][1]
      if new_price[:value].nil? || new_price[:quantity_type_id].nil?
        flash[:html_alert] = t('products.missing_price_element')
      else
        new_price = Price.new :value => new_price[:value].to_i,
                              :quantity_type_id => new_price[:quantity_type_id],
                              :quantity_type => QuantityType.find(new_price[:quantity_type_id])
        new_price.save!
        product_params.delete(:price_attributes)
        product_params.delete(:ingredient_id)
        new_product = Product.new(product_params)
        new_product.price = new_price
        new_product.ingredient = Ingredient.find(ingredient_id)
        new_product.save!
        redirect_to admin_products_url
      end
    end

    def destroy
      p = Product.find(params[:id])
      p.price.destroy!
      p.destroy!
      redirect_to admin_products_url
    end
  end

  index do
    selectable_column
    id_column
    column :product_tag do |prod|
      table_for prod.product_tags.order('name ASC') do
        column do |elem|
          elem.name
        end
      end
    end
    column :point_of_sales do |prod|
      table_for prod.point_of_sales.order('name ASC') do
        column do |elem|
          elem.name + " (" + elem.address.city + ")"
        end
      end
    end
    column :ingredient do |prod|
      table_for prod.ingredient do
        column do |elem|
          elem.name
        end
      end
    end
    column :price do |prod|
      table_for prod.price do
        column do |elem|
          elem.value.to_s + "€ / " + elem.quantity_type.name
        end
      end
    end
    column :created_at
    actions
  end

  show do
    attributes_table do
      table_for product.product_tags.order('name ASC') do
        column "Tags" do |tag|
          tag.name
        end
      end
      table_for product.point_of_sales do
        column "Point of sales" do |sale|
          sale.name + " - " + sale.address.city
        end
      end
      table_for product.price do
        column "Price" do |price|
          price.value.to_s + "€ / " + price.quantity_type.name
        end
      end
      table_for product.ingredient do
        column "Ingredient" do |ingredient|
          ingredient.name
        end
      end
      row :created_at
    end
  end

  form do |f|
    f.inputs "Add / Edit Product" do
      f.input :product_tags, :as => :check_boxes
      f.input :ingredient, :as => :check_boxes
      f.input :point_of_sales, :as => :check_boxes,
                               collection: PointOfSale.includes(:address).all.map { |t|
                                 [
                                   t.name + " (" + t.address.entilted + " / " + t.address.city +
                                                                       ")", t.id,
                                 ]
                               }
      f.has_many :price, new_record: true do |fff|
        fff.input :value
        fff.input :quantity_type, :collection => QuantityType.all
      end
    end
    actions
  end
end
