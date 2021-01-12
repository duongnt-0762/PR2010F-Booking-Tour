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

<<<<<<< HEAD
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_01_11_145915) do

  create_table "booking_tours", charset: "utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tour_id"
    t.integer "stayed"
    t.boolean "status"
=======
>>>>>>> loginv5
ActiveRecord::Schema.define(version: 2021_01_06_082024) do

  create_table "booking_tours", charset: "utf8", force: :cascade do |t|
    t.integer "tour_id"
<<<<<<< HEAD
=======
>>>>>>> d5ea98a... admin_hoang
>>>>>>> loginv5
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", charset: "utf8", force: :cascade do |t|
<<<<<<< HEAD
    t.integer "user_id"
=======
<<<<<<< HEAD
    t.string "content"
    t.integer "user_id"
    t.integer "review_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hashtags", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", charset: "utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "review_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rates", charset: "utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tour_id"
    t.integer "quantity"
=======
    t.integer "user_id"
>>>>>>> d5ea98a... admin_hoang
>>>>>>> loginv5
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", charset: "utf8", force: :cascade do |t|
    t.string "title"
<<<<<<< HEAD
    t.string "body"
=======
<<<<<<< HEAD
    t.string "content"
    t.integer "user"
=======
    t.string "body"
>>>>>>> d5ea98a... admin_hoang
>>>>>>> loginv5
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tours", charset: "utf8", force: :cascade do |t|
<<<<<<< HEAD
    t.string "name"
    t.string "content"
=======
<<<<<<< HEAD
    t.string "title"
    t.string "address"
    t.text "description"
    t.text "content"
    t.decimal "price", precision: 8, scale: 2
    t.text "house_type"
    t.text "convenient"
    t.text "rules"
    t.text "furniture"
=======
    t.string "name"
    t.string "content"
>>>>>>> d5ea98a... admin_hoang
>>>>>>> loginv5
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
<<<<<<< HEAD
=======
<<<<<<< HEAD
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin"
=======
>>>>>>> d5ea98a... admin_hoang
>>>>>>> loginv5
  end

end
