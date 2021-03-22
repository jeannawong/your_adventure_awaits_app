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

ActiveRecord::Schema.define(version: 2021_03_21_160215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventure_helpful_hints", force: :cascade do |t|
    t.integer "adventure_id"
    t.integer "helpful_hint_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "adventures", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "cost"
    t.string "time_of_day"
    t.string "duration"
    t.string "memory_post"
    t.string "memory_image"
    t.integer "journey_id"
    t.boolean "accepted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "helpful_hints", force: :cascade do |t|
    t.string "hint"
    t.string "description"
    t.string "hint_symbol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.integer "journey_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "journeys", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "subtotal", precision: 9, scale: 2
    t.decimal "tax", precision: 9, scale: 2
    t.decimal "total", precision: 9, scale: 2
    t.integer "user_id"
    t.integer "journey_id"
    t.integer "review_rating"
    t.string "review_comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "username"
    t.string "password_digest"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
