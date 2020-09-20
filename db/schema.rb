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

ActiveRecord::Schema.define(version: 2014_10_05_220858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.decimal "balance"
    t.date "payment_due_date"
    t.integer "state"
    t.bigint "member_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_accounts_on_member_id"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_id", null: false
    t.string "resource_type", null: false
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "klasses", force: :cascade do |t|
    t.string "day_of_week"
    t.datetime "class_time"
    t.string "name"
    t.boolean "recurring", default: true
    t.bigint "studio_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_klasses_on_studio_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.bigint "studio_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_levels_on_studio_id"
  end

  create_table "member_notes", force: :cascade do |t|
    t.text "body"
    t.bigint "member_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_member_notes_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "email"
    t.date "birthday"
    t.boolean "active", default: true
    t.string "image"
    t.date "start_date"
    t.date "end_date"
    t.string "membership_type", default: "monthly"
    t.decimal "membership_price"
    t.bigint "studio_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "level_id"
    t.integer "source_id"
    t.index ["level_id"], name: "index_members_on_level_id"
    t.index ["source_id"], name: "index_members_on_source_id"
    t.index ["studio_id"], name: "index_members_on_studio_id"
  end

  create_table "payments", force: :cascade do |t|
    t.date "due_date"
    t.date "payment_date"
    t.decimal "amount_due"
    t.decimal "payment_amount"
    t.string "payment_method", default: "check"
    t.bigint "account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_payments_on_account_id"
  end

  create_table "settings_members", force: :cascade do |t|
    t.integer "default_payment_due_day", default: 1
    t.boolean "default_payment_due_day_enabled", default: false
    t.bigint "studio_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_settings_members_on_studio_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "name"
    t.bigint "studio_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_sources_on_studio_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "email"
    t.string "time_zone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.boolean "admin"
    t.boolean "owner"
    t.bigint "studio_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["studio_id"], name: "index_users_on_studio_id"
  end

  create_table "visits", force: :cascade do |t|
    t.date "visit_date"
    t.bigint "member_id"
    t.bigint "klass_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["klass_id"], name: "index_visits_on_klass_id"
    t.index ["member_id"], name: "index_visits_on_member_id"
  end

end
