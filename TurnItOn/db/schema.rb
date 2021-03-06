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

ActiveRecord::Schema.define(version: 20180612232237) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourite_ideas", force: :cascade do |t|
    t.integer "user_id"
    t.integer "idea_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idea_id"], name: "index_favourite_ideas_on_idea_id"
    t.index ["user_id"], name: "index_favourite_ideas_on_user_id"
  end

  create_table "funds", force: :cascade do |t|
    t.integer "amount"
    t.integer "user_id"
    t.integer "idea_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "email_confirmed"
    t.string "confirm_token"
    t.index ["idea_id"], name: "index_funds_on_idea_id"
    t.index ["user_id"], name: "index_funds_on_user_id"
  end

  create_table "ideas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "estimated_date"
    t.integer "goal_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "category_id"
    t.string "idea_image_file_name"
    t.string "idea_image_content_type"
    t.integer "idea_image_file_size"
    t.datetime "idea_image_updated_at"
    t.boolean "outstanding"
    t.integer "funded", default: 0
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.integer "idea_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idea_id"], name: "index_messages_on_idea_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "promises", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "cost"
    t.integer "idea_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idea_id"], name: "index_promises_on_idea_id"
    t.index ["user_id"], name: "index_promises_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.date "birthdate"
    t.text "about"
    t.string "uid"
    t.string "provider"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
