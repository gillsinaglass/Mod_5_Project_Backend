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

ActiveRecord::Schema.define(version: 2019_04_16_195118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collaborations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "git_hub"
    t.string "pitch"
    t.string "status"
    t.integer "user_id"
    t.string "image_one"
    t.string "image_two"
    t.string "image_three"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill_name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "user_id"
    t.string "priority"
    t.string "status"
    t.float "estimated_time"
    t.string "description"
    t.integer "work_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "user_id"
    t.integer "work_id"
    t.string "team_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_skills", force: :cascade do |t|
    t.integer "user_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "profile_picture"
    t.string "job_title"
    t.string "user_bio"
    t.string "git_hub"
    t.string "instagram"
    t.string "medium"
    t.string "cover_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_skills", force: :cascade do |t|
    t.integer "skill_id"
    t.integer "work_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "works", force: :cascade do |t|
    t.string "work_title"
    t.string "description"
    t.integer "collaboration_id"
    t.integer "estimated_time"
    t.string "priority"
    t.string "status"
    t.string "image_one"
    t.string "image_two"
    t.string "image_three"
    t.string "video_url"
    t.string "git_hub"
    t.integer "owner"
    t.integer "designer"
    t.integer "developer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
