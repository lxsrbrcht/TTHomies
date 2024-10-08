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

ActiveRecord::Schema[7.1].define(version: 2024_10_08_081844) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.string "start_date"
    t.string "adventure"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_campaigns", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "campaign_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_character_campaigns_on_campaign_id"
    t.index ["character_id"], name: "index_character_campaigns_on_character_id"
  end

  create_table "characterclasses", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "dnd_class_id", null: false
    t.bigint "dnd_subclass_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_characterclasses_on_character_id"
    t.index ["dnd_class_id"], name: "index_characterclasses_on_dnd_class_id"
    t.index ["dnd_subclass_id"], name: "index_characterclasses_on_dnd_subclass_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.bigint "user_id", null: false
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id", null: false
    t.index ["game_id"], name: "index_characters_on_game_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "dnd_classes", force: :cascade do |t|
    t.string "class_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.index ["game_id"], name: "index_dnd_classes_on_game_id"
  end

  create_table "dnd_subclasses", force: :cascade do |t|
    t.string "subclass_name"
    t.string "description"
    t.bigint "dnd_class_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.index ["dnd_class_id"], name: "index_dnd_subclasses_on_dnd_class_id"
    t.index ["game_id"], name: "index_dnd_subclasses_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "system"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "experience"
    t.string "city"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "character_campaigns", "campaigns"
  add_foreign_key "character_campaigns", "characters"
  add_foreign_key "characterclasses", "characters"
  add_foreign_key "characterclasses", "dnd_classes"
  add_foreign_key "characterclasses", "dnd_subclasses"
  add_foreign_key "characters", "games"
  add_foreign_key "characters", "users"
  add_foreign_key "dnd_classes", "games"
  add_foreign_key "dnd_subclasses", "dnd_classes"
  add_foreign_key "dnd_subclasses", "games"
end
