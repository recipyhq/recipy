# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_31_153122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "entilted"
    t.string "city"
    t.string "zip"
    t.string "state"
    t.string "country"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "longitude"
    t.integer "latitude"
  end

  create_table "administrators", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_administrators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_administrators_on_unlock_token", unique: true
  end

  create_table "cook_accounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "confirmed", default: false
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "user_id"
    t.string "account_type"
    t.bigint "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_type", "account_id"], name: "index_memberships_on_account_type_and_account_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "notebook_recipes", force: :cascade do |t|
    t.bigint "notebook_id"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notebook_id"], name: "index_notebook_recipes_on_notebook_id"
    t.index ["recipe_id"], name: "index_notebook_recipes_on_recipe_id"
  end

  create_table "notebooks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "openning_hours", force: :cascade do |t|
    t.time "open"
    t.time "close"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "day"
  end

  create_table "point_of_sales", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "market_type"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_point_of_sales_on_user_id"
  end

  create_table "prices", force: :cascade do |t|
    t.integer "value"
    t.bigint "quantity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quantity_type_id"], name: "index_prices_on_quantity_type_id"
  end

  create_table "producer_accounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["ingredient_id"], name: "index_products_on_ingredient_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "prospects", force: :cascade do |t|
    t.string "kind", default: "producer"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quantity_equivalencies", force: :cascade do |t|
    t.integer "gram_equivalency"
    t.bigint "quantity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quantity_type_id"], name: "index_quantity_equivalencies_on_quantity_type_id"
  end

  create_table "quantity_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "r_shp_lst_ing_quantities", force: :cascade do |t|
    t.bigint "shopping_list_ingredient_id"
    t.bigint "shopping_list_quantity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopping_list_ingredient_id"], name: "index_r_shp_lst_ing_quantities_on_shopping_list_ingredient_id"
    t.index ["shopping_list_quantity_id"], name: "index_r_shp_lst_ing_quantities_on_shopping_list_quantity_id"
  end

  create_table "r_shp_lst_quantities", force: :cascade do |t|
    t.bigint "shopping_list_quantity_id"
    t.bigint "quantity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quantity_type_id"], name: "index_r_shp_lst_quantities_on_quantity_type_id"
    t.index ["shopping_list_quantity_id"], name: "index_r_shp_lst_quantities_on_shopping_list_quantity_id"
  end

  create_table "recipe_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "quantity"
    t.bigint "recipe_quantity_id"
    t.index ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
    t.index ["recipe_quantity_id"], name: "index_recipe_ingredients_on_recipe_quantity_id"
  end

  create_table "recipe_quantities", force: :cascade do |t|
    t.integer "value"
    t.bigint "quantity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quantity_type_id"], name: "index_recipe_quantities_on_quantity_type_id"
  end

  create_table "recipe_scores", force: :cascade do |t|
    t.integer "value"
    t.bigint "recipe_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.index ["recipe_id"], name: "index_recipe_scores_on_recipe_id"
    t.index ["user_id"], name: "index_recipe_scores_on_user_id"
  end

  create_table "recipe_utensils", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "utensil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_recipe_utensils_on_recipe_id"
    t.index ["utensil_id"], name: "index_recipe_utensils_on_utensil_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.integer "score", default: 0
    t.text "description"
    t.text "step"
    t.integer "difficulty"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "view", default: 0
    t.integer "person", default: 1
    t.text "steps", default: [], array: true
    t.integer "preparation_time"
    t.integer "cooking_time"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "related_ingr_products", force: :cascade do |t|
    t.bigint "ingredient_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_related_ingr_products_on_ingredient_id"
    t.index ["product_id"], name: "index_related_ingr_products_on_product_id"
  end

  create_table "related_ingredient_tags", force: :cascade do |t|
    t.bigint "ingredient_id"
    t.bigint "ingredient_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_related_ingredient_tags_on_ingredient_id"
    t.index ["ingredient_tag_id"], name: "index_related_ingredient_tags_on_ingredient_tag_id"
  end

  create_table "related_price_quantities", force: :cascade do |t|
    t.bigint "price_id"
    t.bigint "quantity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["price_id"], name: "index_related_price_quantities_on_price_id"
    t.index ["quantity_type_id"], name: "index_related_price_quantities_on_quantity_type_id"
  end

  create_table "related_product_prices", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "price_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["price_id"], name: "index_related_product_prices_on_price_id"
    t.index ["product_id"], name: "index_related_product_prices_on_product_id"
  end

  create_table "related_product_tags", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "product_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_related_product_tags_on_product_id"
    t.index ["product_tag_id"], name: "index_related_product_tags_on_product_tag_id"
  end

  create_table "related_quantity_equivalencies", force: :cascade do |t|
    t.bigint "ingredient_id"
    t.bigint "quantity_equivalency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_related_quantity_equivalencies_on_ingredient_id"
    t.index ["quantity_equivalency_id"], name: "index_related_quantity_equivalencies_on_quantity_equivalency_id"
  end

  create_table "related_quantity_types", force: :cascade do |t|
    t.bigint "quantity_type_id"
    t.bigint "quantity_equivalency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quantity_equivalency_id"], name: "index_related_quantity_types_on_quantity_equivalency_id"
    t.index ["quantity_type_id"], name: "index_related_quantity_types_on_quantity_type_id"
  end

  create_table "related_recipe_categories", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "recipe_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_category_id"], name: "index_related_recipe_categories_on_recipe_category_id"
    t.index ["recipe_id"], name: "index_related_recipe_categories_on_recipe_id"
  end

  create_table "related_recipe_ingr_quants", force: :cascade do |t|
    t.bigint "recipe_ingredient_id"
    t.bigint "recipe_quantity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_ingredient_id"], name: "index_related_recipe_ingr_quants_on_recipe_ingredient_id"
    t.index ["recipe_quantity_id"], name: "index_related_recipe_ingr_quants_on_recipe_quantity_id"
  end

  create_table "related_recipe_quantities", force: :cascade do |t|
    t.bigint "recipe_quantity_id"
    t.bigint "quantity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quantity_type_id"], name: "index_related_recipe_quantities_on_quantity_type_id"
    t.index ["recipe_quantity_id"], name: "index_related_recipe_quantities_on_recipe_quantity_id"
  end

  create_table "related_sale_addresses", force: :cascade do |t|
    t.bigint "point_of_sale_id"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_related_sale_addresses_on_address_id"
    t.index ["point_of_sale_id"], name: "index_related_sale_addresses_on_point_of_sale_id"
  end

  create_table "related_sale_hours", force: :cascade do |t|
    t.bigint "point_of_sale_id"
    t.bigint "openning_hour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["openning_hour_id"], name: "index_related_sale_hours_on_openning_hour_id"
    t.index ["point_of_sale_id"], name: "index_related_sale_hours_on_point_of_sale_id"
  end

  create_table "related_sale_products", force: :cascade do |t|
    t.bigint "point_of_sale_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["point_of_sale_id"], name: "index_related_sale_products_on_point_of_sale_id"
    t.index ["product_id"], name: "index_related_sale_products_on_product_id"
  end

  create_table "shopping_list_ingredients", force: :cascade do |t|
    t.bigint "shopping_list_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "checked", default: false
    t.index ["ingredient_id"], name: "index_shopping_list_ingredients_on_ingredient_id"
    t.index ["shopping_list_id"], name: "index_shopping_list_ingredients_on_shopping_list_id"
  end

  create_table "shopping_list_quantities", force: :cascade do |t|
    t.integer "value"
    t.bigint "quantity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quantity_type_id"], name: "index_shopping_list_quantities_on_quantity_type_id"
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shopping_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "newsletters"
    t.boolean "isProducer"
    t.text "bio"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "utensils", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "memberships", "users"
  add_foreign_key "notebook_recipes", "notebooks"
  add_foreign_key "notebook_recipes", "recipes"
  add_foreign_key "point_of_sales", "users"
  add_foreign_key "products", "users"
  add_foreign_key "recipes", "users"
  add_foreign_key "shopping_lists", "users"
end
