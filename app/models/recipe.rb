# rubocop:disable all
class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :cooking_time, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :preparation_time, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :person, presence: true
  validates :difficulty, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :description, presence: true
  has_many :related_recipe_categories, dependent: :destroy
  has_many :recipe_categories, :through => :related_recipe_categories
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, -> { where(confirmed: true) }, :through => :recipe_ingredients
  has_many :recipe_utensils, dependent: :destroy
  has_many :utensils, :through => :recipe_utensils
  has_many :notebook_recipes, dependent: :destroy
  has_many :notebooks, through: :notebook_recipes
  has_many :recipe_scores, dependent: :destroy
  has_many :shopping_lists, through: :ingredients
  has_one_attached :image
  validates :image, presence: true

  belongs_to :user, optional: true

  accepts_nested_attributes_for :notebooks, allow_destroy: true
  accepts_nested_attributes_for :recipe_ingredients, allow_destroy: true
  accepts_nested_attributes_for :recipe_utensils, allow_destroy: true

  def steps_raw
    steps.join("\r\n") unless steps.nil?
  end

  def score
    self.recipe_scores.average(:value) || 0.0
  end

  def score_count
    self.recipe_scores.count();
  end

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end

  def self.search_by_fields(q, fields)
    search = "%#{q.strip.downcase}%"
    if !q.nil? && search.length > 0
      sql = fields.map { |field| "LOWER(recipes.#{field}) LIKE :q" }.join(' OR ')
      logger.warn("'#{search}' '#{q}' '#{sql}'")
      where(sql, { q: search })
    else
      all
    end
  end

  def self.by_value_max(name, value)
    if !value.nil? && value.length != 0
      where("#{name} <= :v", { v: value })
    else
      all
    end
  end

  def self.have_ingredients(igs)
    if !igs.nil? && igs.length > 0
      logger.info(igs)
      joins(:ingredients).where(ingredients: { id: igs.to_a }).group(:id)
    else
      all
    end
  end

  def self.no_have_ingredients(igs)
    if !igs.nil? && igs.length > 0
      logger.info(igs)
      recipes_to_remove = Recipe.joins(:ingredients).where(ingredients: { id: igs.to_a }).group(:id).select(:id).map{|r| r.id}
      joins(:ingredients).where.not(id: recipes_to_remove.to_a).group(:id)
    else
      all
    end
  end

  def self.to_page(num, per_page)
    limit(per_page).offset((num - 1) * per_page)
  end
end
# rubocop:enable all
