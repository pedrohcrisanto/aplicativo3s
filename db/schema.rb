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

ActiveRecord::Schema.define(version: 2018_09_26_181350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accountbanks", force: :cascade do |t|
    t.string "nome"
    t.string "banco"
    t.string "agencia"
    t.string "conta_corrente"
    t.string "codigo_contabil"
    t.bigint "company_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_accountbanks_on_company_id"
    t.index ["user_id"], name: "index_accountbanks_on_user_id"
  end

  create_table "accountfinancials", force: :cascade do |t|
    t.string "nome"
    t.string "natureza"
    t.text "historico"
    t.string "codigo_contabil"
    t.bigint "companyprovider_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["companyprovider_id"], name: "index_accountfinancials_on_companyprovider_id"
    t.index ["user_id"], name: "index_accountfinancials_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "codigo_contabil"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "companyproviders", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "codigo_contabil_cliente"
    t.string "codigo_contabil_fornecedor"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companyproviders_on_user_id"
  end

  create_table "doctypes", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_doctypes_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "typepayment_id"
    t.bigint "company_id"
    t.bigint "companyprovider_id"
    t.bigint "accountfinancial_id"
    t.bigint "accountbank_id"
    t.bigint "doctype_id"
    t.bigint "category_id"
    t.date "data_vencimento"
    t.date "data_baixa"
    t.text "historico"
    t.decimal "valor_operacao"
    t.decimal "valor_acrescimo"
    t.decimal "valor_desconto"
    t.decimal "valor_liquido"
    t.bigint "user_id"
    t.json "documents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accountbank_id"], name: "index_transactions_on_accountbank_id"
    t.index ["accountfinancial_id"], name: "index_transactions_on_accountfinancial_id"
    t.index ["category_id"], name: "index_transactions_on_category_id"
    t.index ["company_id"], name: "index_transactions_on_company_id"
    t.index ["companyprovider_id"], name: "index_transactions_on_companyprovider_id"
    t.index ["doctype_id"], name: "index_transactions_on_doctype_id"
    t.index ["typepayment_id"], name: "index_transactions_on_typepayment_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "typepayments", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_typepayments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accountbanks", "companies"
  add_foreign_key "accountbanks", "users"
  add_foreign_key "accountfinancials", "companyproviders"
  add_foreign_key "accountfinancials", "users"
  add_foreign_key "categories", "users"
  add_foreign_key "companies", "users"
  add_foreign_key "companyproviders", "users"
  add_foreign_key "doctypes", "users"
  add_foreign_key "transactions", "accountbanks"
  add_foreign_key "transactions", "accountfinancials"
  add_foreign_key "transactions", "categories"
  add_foreign_key "transactions", "companies"
  add_foreign_key "transactions", "companyproviders"
  add_foreign_key "transactions", "doctypes"
  add_foreign_key "transactions", "typepayments"
  add_foreign_key "transactions", "users"
  add_foreign_key "typepayments", "users"
end
