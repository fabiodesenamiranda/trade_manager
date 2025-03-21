# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_21_190858) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "cost_simulations", force: :cascade do |t|
    t.string "product"
    t.decimal "fob_price"
    t.decimal "freight_cost"
    t.decimal "insurance"
    t.decimal "import_taxes"
    t.decimal "total_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "export_processes", force: :cascade do |t|
    t.string "process_number"
    t.string "exporter"
    t.string "client"
    t.text "product_description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freight_quotes", force: :cascade do |t|
    t.string "transport_mode"
    t.decimal "cost"
    t.integer "estimated_days"
    t.string "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "import_processes", force: :cascade do |t|
    t.string "process_number"
    t.string "importer"
    t.string "supplier"
    t.text "product_description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "role", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
