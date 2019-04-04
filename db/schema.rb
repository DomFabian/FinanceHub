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

ActiveRecord::Schema.define(version: 2019_04_04_024449) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
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

  create_table "batches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date", default: "2019-04-04 02:14:03"
  end

  create_table "budgets", force: :cascade do |t|
    t.integer "fiscal_year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "committee_id"
    t.index ["committee_id"], name: "index_budgets_on_committee_id"
    t.index ["fiscal_year_id"], name: "index_budgets_on_fiscal_year_id"
  end

  create_table "categories", force: :cascade do |t|
    t.integer "budget_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
    t.index ["budget_id"], name: "index_categories_on_budget_id"
  end

  create_table "committees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
  end

  create_table "committees_members", force: :cascade do |t|
    t.integer "committee_id"
    t.integer "member_id"
    t.index ["committee_id"], name: "index_committees_members_on_committee_id"
    t.index ["member_id"], name: "index_committees_members_on_member_id"
  end

  create_table "fiscal_years", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
    t.boolean "active", default: true
  end

  create_table "form_responses", force: :cascade do |t|
    t.integer "member_id"
    t.integer "form_id"
    t.integer "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "answers", default: "--- []\n"
    t.string "id_number", default: "1939", null: false
    t.index ["batch_id"], name: "index_form_responses_on_batch_id"
    t.index ["form_id"], name: "index_form_responses_on_form_id"
    t.index ["member_id"], name: "index_form_responses_on_member_id"
  end

  create_table "form_responses_subcategories", force: :cascade do |t|
    t.integer "form_response_id"
    t.integer "subcategory_id"
    t.index ["form_response_id"], name: "index_form_responses_subcategories_on_form_response_id"
    t.index ["subcategory_id"], name: "index_form_responses_subcategories_on_subcategory_id"
  end

  create_table "forms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "form_type", default: "ATC", null: false
    t.text "questions", default: "--- []\n"
  end

  create_table "members", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
    t.integer "auth_level", default: 0
  end

  create_table "subcategories", force: :cascade do |t|
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
    t.integer "amount_allotted", default: 0
    t.integer "amount_pending", default: 0
    t.integer "amount_spent", default: 0
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

end
