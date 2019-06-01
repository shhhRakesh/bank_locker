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

ActiveRecord::Schema.define(version: 20190601105440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "role"
    t.bigint "bank_branch_id"
    t.index ["bank_branch_id"], name: "index_admins_on_bank_branch_id"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bank_branches", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "ifsc_code"
    t.string "micr_code"
    t.bigint "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_bank_branches_on_manager_id"
  end

  create_table "locker_requests", force: :cascade do |t|
    t.bigint "user_id"
    t.date "request_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.bigint "locker_id"
    t.index ["locker_id"], name: "index_locker_requests_on_locker_id"
    t.index ["user_id"], name: "index_locker_requests_on_user_id"
  end

  create_table "locker_types", force: :cascade do |t|
    t.string "locker_type"
    t.integer "yearly_rent"
    t.integer "number_of_free_visits"
    t.integer "extra_visit_charges"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locker_visit_requests", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "visit_date_time"
    t.string "visit_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_locker_visit_requests_on_user_id"
  end

  create_table "lockers", force: :cascade do |t|
    t.bigint "locker_type_id"
    t.string "locker_code"
    t.string "locker_name"
    t.bigint "bank_branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bank_branch_id"], name: "index_lockers_on_bank_branch_id"
    t.index ["locker_type_id"], name: "index_lockers_on_locker_type_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "mobile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_lockers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "locker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locker_id"], name: "index_user_lockers_on_locker_id"
    t.index ["user_id"], name: "index_user_lockers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "customer_id"
    t.bigint "bank_branch_id"
    t.integer "status"
    t.string "pan_number"
    t.index ["bank_branch_id"], name: "index_users_on_bank_branch_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "admins", "bank_branches"
  add_foreign_key "bank_branches", "managers"
  add_foreign_key "locker_requests", "lockers"
  add_foreign_key "locker_requests", "users"
  add_foreign_key "locker_visit_requests", "users"
  add_foreign_key "lockers", "bank_branches"
  add_foreign_key "lockers", "locker_types"
  add_foreign_key "user_lockers", "lockers"
  add_foreign_key "user_lockers", "users"
  add_foreign_key "users", "bank_branches"
end
