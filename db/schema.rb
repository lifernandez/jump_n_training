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

ActiveRecord::Schema[7.0].define(version: 2023_06_05_161558) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_activities_on_club_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_bookings_on_service_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "club_reviews", force: :cascade do |t|
    t.bigint "subscription_id", null: false
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscription_id"], name: "index_club_reviews_on_subscription_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.text "description"
    t.string "address"
    t.string "sport"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clubs_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.bigint "booking_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
  end

  create_table "services", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "user_id", null: false
    t.text "description"
    t.string "address"
    t.string "sport"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_services_on_category_id"
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.bigint "user_id", null: false
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_subscriptions_on_club_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "user_activities", force: :cascade do |t|
    t.bigint "activity_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_user_activities_on_activity_id"
    t.index ["user_id"], name: "index_user_activities_on_user_id"
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

  add_foreign_key "activities", "clubs"
  add_foreign_key "bookings", "services"
  add_foreign_key "bookings", "users"
  add_foreign_key "club_reviews", "subscriptions"
  add_foreign_key "clubs", "users"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "services", "categories"
  add_foreign_key "services", "users"
  add_foreign_key "subscriptions", "clubs"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "user_activities", "activities"
  add_foreign_key "user_activities", "users"
end
