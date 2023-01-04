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

ActiveRecord::Schema.define(version: 2022_12_29_145704) do

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.string "director"
    t.integer "year"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.string "name"
    t.integer "movie_id"
    t.integer "rating"
  end

  create_table "theaters", force: :cascade do |t|
    t.string "theater_name"
    t.integer "movie_id"
    t.integer "rating_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_theaters_on_movie_id"
    t.index ["rating_id"], name: "index_theaters_on_rating_id"
  end

end
