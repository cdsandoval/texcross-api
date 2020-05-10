# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_10_122632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "commercials", force: :cascade do |t|
    t.date "start_date"
    t.date "delivery_date"
    t.string "status"
    t.bigint "client_id", null: false
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_commercials_on_client_id"
    t.index ["invoice_id"], name: "index_commercials_on_invoice_id"
  end

  create_table "consumption_sheets", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cuttings", force: :cascade do |t|
    t.integer "total"
    t.bigint "referral_guide_id", null: false
    t.bigint "purchase_order_colors_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["purchase_order_colors_id"], name: "index_cuttings_on_purchase_order_colors_id"
    t.index ["referral_guide_id"], name: "index_cuttings_on_referral_guide_id"
  end

  create_table "data_sheets", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "finishes", force: :cascade do |t|
    t.date "start_date"
    t.integer "start_quantity"
    t.date "delivery_date"
    t.integer "delivery_quantity"
    t.date "sold_out_date"
    t.integer "sold_out_quantity"
    t.bigint "purchase_order_color_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["purchase_order_color_id"], name: "index_finishes_on_purchase_order_color_id"
  end

  create_table "individual_cuttings", force: :cascade do |t|
    t.date "date"
    t.integer "quantity"
    t.integer "order"
    t.bigint "cutting_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cutting_id"], name: "index_individual_cuttings_on_cutting_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "name"
    t.string "url_with_prices"
    t.string "url_without_prices"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "looms", force: :cascade do |t|
    t.date "start_date"
    t.date "delivery_date"
    t.integer "status"
    t.bigint "purchase_order_color_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["purchase_order_color_id"], name: "index_looms_on_purchase_order_color_id"
  end

  create_table "purchase_order_colors", force: :cascade do |t|
    t.integer "quantity"
    t.string "status"
    t.bigint "purchase_order_id", null: false
    t.bigint "colors_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["colors_id"], name: "index_purchase_order_colors_on_colors_id"
    t.index ["purchase_order_id"], name: "index_purchase_order_colors_on_purchase_order_id"
  end

  create_table "purchase_order_sheets", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.string "description"
    t.bigint "commercial_id", null: false
    t.bigint "consumption_sheet_id", null: false
    t.bigint "data_sheet_id", null: false
    t.bigint "purchase_order_sheet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commercial_id"], name: "index_purchase_orders_on_commercial_id"
    t.index ["consumption_sheet_id"], name: "index_purchase_orders_on_consumption_sheet_id"
    t.index ["data_sheet_id"], name: "index_purchase_orders_on_data_sheet_id"
    t.index ["purchase_order_sheet_id"], name: "index_purchase_orders_on_purchase_order_sheet_id"
  end

  create_table "referral_guides", force: :cascade do |t|
    t.string "number"
    t.string "owner"
    t.integer "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.string "cannonical_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sewings", force: :cascade do |t|
    t.date "start_date"
    t.integer "start_quantity"
    t.date "delivery_date"
    t.integer "delivery_quantity"
    t.bigint "purchase_order_color_id", null: false
    t.bigint "referral_guide_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["purchase_order_color_id"], name: "index_sewings_on_purchase_order_color_id"
    t.index ["referral_guide_id"], name: "index_sewings_on_referral_guide_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "roles_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["roles_id"], name: "index_user_roles_on_roles_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.date "received_date"
    t.integer "quantity"
    t.integer "box_number"
    t.string "image_url"
    t.bigint "purchase_order_color_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["purchase_order_color_id"], name: "index_warehouses_on_purchase_order_color_id"
  end

  add_foreign_key "commercials", "clients"
  add_foreign_key "commercials", "invoices"
  add_foreign_key "cuttings", "purchase_order_colors", column: "purchase_order_colors_id"
  add_foreign_key "cuttings", "referral_guides"
  add_foreign_key "finishes", "purchase_order_colors"
  add_foreign_key "individual_cuttings", "cuttings"
  add_foreign_key "looms", "purchase_order_colors"
  add_foreign_key "purchase_order_colors", "colors", column: "colors_id"
  add_foreign_key "purchase_order_colors", "purchase_orders"
  add_foreign_key "purchase_orders", "commercials"
  add_foreign_key "purchase_orders", "consumption_sheets"
  add_foreign_key "purchase_orders", "data_sheets"
  add_foreign_key "purchase_orders", "purchase_order_sheets"
  add_foreign_key "sewings", "purchase_order_colors"
  add_foreign_key "sewings", "referral_guides"
  add_foreign_key "user_roles", "roles", column: "roles_id"
  add_foreign_key "user_roles", "users"
  add_foreign_key "warehouses", "purchase_order_colors"
end
