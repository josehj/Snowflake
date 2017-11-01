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

ActiveRecord::Schema.define(version: 20171101175658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.text "summary"
    t.bigint "story_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_chapters_on_story_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "summary"
    t.string "motivation"
    t.string "goal"
    t.string "epiphany"
    t.string "storyline"
    t.text "synopses"
    t.integer "importance"
    t.integer "age"
    t.string "religion"
    t.string "appearance"
    t.string "core_aspects"
    t.bigint "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_characters_on_story_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "character_1"
    t.integer "character_2"
    t.string "relation"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scenes", force: :cascade do |t|
    t.string "pov"
    t.string "events"
    t.string "conflict"
    t.integer "number"
    t.integer "pages"
    t.bigint "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_scenes_on_chapter_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "sentence"
    t.string "paragraph"
    t.text "page"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "step1", default: false
    t.boolean "step2", default: false
    t.boolean "step3", default: false
    t.boolean "step4", default: false
    t.boolean "step5", default: false
    t.boolean "step6", default: false
    t.boolean "step7", default: false
    t.boolean "step8", default: false
    t.boolean "step9", default: false
    t.boolean "step10", default: false
    t.index ["user_id"], name: "index_stories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "mail"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
