ActiveAdmin.register Ingredient do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :name, :description, :quantity_equivalency_ids => [],
                                     :ingredient_tag_ids => []

  includes :quantity_equivalencies, :related_quantity_equivalencies

  controller do
    # Bullet.enable = false
    #
    # def scoped_collection
    #   Ingredient.includes(:related_quantity_equivalencies, :quantity_equivalencies)
    # end

    def update
      @ingredient = Ingredient.find_by_id(params[:id])
      @ingredient.update(params.require(:ingredient).permit(:name,
                                                            :description,
                                                            :confirmed,
                                                            :quantity_equivalency_ids => [],
                                                            :ingredient_tag_ids => []))
      super
    end

    def destroy
      @ingredient = Ingredient.find_by_id(params[:id])
      unless @ingredient.nil?
        @ingredient.destroy
      end
      super
    end
    # Bullet.enable = true
  end

  index do
    selectable_column
    id_column
    column :name
    column :description
    # unless :image.nil?
    #   column :image do |ad|
    #     unless ad.image.attachment.nil?
    #       image_tag url_for(ad.image.variant(resize: '30x30'))
    #     end
    #   end
    # end
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
    column :confirmed
    actions
  end

  show do
    attributes_table do
      row :name
      # unless :image.nil?
      #   row :image do |ad|
      #     unless ad.image.attachment.nil?
      #       image_tag url_for(ad.image.variant(resize: '100x100'))
      #     end
      #   end
      # end
      row :description
      row :created_at
      row :confirmed
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
      f.input :confirmed, :as => :boolean
      f.input :description
      # f.input :image, :as => :file
      f.input :ingredient_tags, :as => :check_boxes
      f.input :quantity_equivalencies,
              :as => :check_boxes,
              collection: QuantityEquivalency.includes(:quantity_type).all.map { |t|
                [t.gram_equivalency.to_s + "g - " + t.quantity_type.name, t.id]
              }
      actions
    end
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
