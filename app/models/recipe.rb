class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :time, presence: true
  validates :step, presence: true
  validates :difficulty, presence: true
  validates :description, presence: true
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients
  has_many :recipe_utensils
  has_many :utensils, :through => :recipe_utensils
  has_one_attached :image
  validates :image, presence: true

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end

  def self.search_by_fields(q, fields=nil)
    search = "%#{q.strip.downcase}%"
    if (q != nil && search.length > 0)
      sql = fields.map {|field| "LOWER(recipes.#{field}) LIKE :q"}.join(' OR ')
      logger.warn("'#{search}' '#{q}' '#{sql}'");
      where(sql, {q: search})
    else
      all
    end
  end

  def self.by_value_max(name, value)
    if (value != nil && value.length != 0)
      where("#{name} <= :v", {v: value})
    else
      all
    end
  end

  def self.have_ingredients(igs)
    ingredients = igs.select{|ig| ig.length > 0}
    if (ingredients != nil && ingredients.length > 0)
      logger.info(ingredients)
      joins(:ingredients).where("ingredients.id": ingredients.to_a).group("recipes.id")
    else
      all
    end
  end

  def self.page(num, per_page)
    limit(per_page).offset((num - 1) * per_page)
  end
end
