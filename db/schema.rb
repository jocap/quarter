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

ActiveRecord::Schema.define(version: 20180216204641) do

  create_table "comments", force: :cascade do |t|
    t.integer "post_id"
    t.integer "member_id"
    t.text "content_", null: false
    t.integer "likes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_comments_on_member_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "name_", null: false
    t.string "slug_", null: false
    t.text "description_", default: ""
    t.boolean "likes_enabled", default: true
    t.boolean "require_registration", default: false
    t.string "required_fields", default: "--- []\n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer "home_id"
    t.integer "clearance", limit: 5, default: 0
    t.boolean "blocked", default: false
    t.string "username_", null: false
    t.string "password_digest", null: false
    t.text "picture_"
    t.string "display_name_"
    t.string "email_"
    t.text "description_"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["home_id"], name: "index_members_on_home_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "home_id"
    t.integer "member_id"
    t.text "content_", null: false
    t.integer "likes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["home_id"], name: "index_posts_on_home_id"
    t.index ["member_id"], name: "index_posts_on_member_id"
  end

end
