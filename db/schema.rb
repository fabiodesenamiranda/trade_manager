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

ActiveRecord::Schema[8.0].define(version: 2025_03_26_143016) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "country"
    t.string "state"
    t.string "address"
    t.string "number"
    t.string "neighborhood"
    t.string "city"
    t.string "zip_code"
    t.integer "agent_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.bigint "agent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_contacts_on_agent_id"
  end

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

  create_table "customs_clearances", force: :cascade do |t|
    t.string "reference"
    t.string "import_license"
    t.date "import_license_date"
    t.string "import_license_type"
    t.string "import_declaration"
    t.date "import_declaration_date"
    t.string "parametrization_channel"
    t.string "di_status"
    t.string "import_type"
    t.string "cargo_location"
    t.decimal "customs_costs"
    t.text "documentation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exchange_rates", force: :cascade do |t|
    t.decimal "rate"
    t.datetime "recorded_at"
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

  create_table "import_process_products", force: :cascade do |t|
    t.bigint "import_process_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["import_process_id"], name: "index_import_process_products_on_import_process_id"
    t.index ["product_id"], name: "index_import_process_products_on_product_id"
  end

  create_table "import_processes", force: :cascade do |t|
    t.string "reference"
    t.string "supplier"
    t.text "product"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "invoice_number"
    t.date "invoice_date"
    t.string "incoterm"
    t.string "payment_term"
    t.integer "quantity"
    t.decimal "unit_price", precision: 10, scale: 2
    t.string "currency"
    t.decimal "total_value", precision: 10, scale: 2
    t.date "delivery_deadline"
  end

  create_table "products", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.string "ncm"
    t.string "unit"
    t.decimal "weight"
    t.string "packing"
    t.bigint "agent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_products_on_agent_id"
  end

  create_table "shipment_transports", force: :cascade do |t|
    t.string "reference"
    t.string "transport_mode"
    t.string "origin_country"
    t.string "destination_country"
    t.string "origin_port"
    t.string "destination_port"
    t.decimal "net_weight"
    t.decimal "gross_weight"
    t.decimal "cubic_volume"
    t.string "equipment_type"
    t.integer "transit_time"
    t.string "shipment_type"
    t.integer "free_time"
    t.string "route"
    t.date "eta"
    t.date "etd"
    t.string "shipping_company"
    t.string "shipping_agency"
    t.string "transport_doc_type"
    t.string "transport_doc_number"
    t.date "transport_doc_date"
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

  add_foreign_key "contacts", "agents"
  add_foreign_key "import_process_products", "import_processes"
  add_foreign_key "import_process_products", "products"
  add_foreign_key "products", "agents"
end
