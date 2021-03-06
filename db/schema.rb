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

ActiveRecord::Schema.define(version: 20171009232915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.string   "dialogName"
    t.integer  "user_id"
    t.integer  "theme_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "type_of_conversation_id"
    t.index ["theme_id"], name: "index_conversations_on_theme_id", using: :btree
    t.index ["user_id"], name: "index_conversations_on_user_id", using: :btree
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "conversation_id"
    t.index ["conversation_id"], name: "index_invites_on_conversation_id", using: :btree
    t.index ["user_id"], name: "index_invites_on_user_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "conversation_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "type_of_theme_id"
  end

  create_table "type_of_conversations", force: :cascade do |t|
    t.string   "name"
    t.string   "main_role"
    t.string   "available_roles", default: [],              array: true
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "type_of_themes", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.string   "fname"
    t.string   "mname"
    t.string   "lname"
    t.boolean  "is_curator"
    t.boolean  "is_admin"
    t.string   "telephone_number"
    t.date     "year_of_st_ed"
    t.integer  "group_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "conversations", "themes"
  add_foreign_key "conversations", "users"
  add_foreign_key "invites", "conversations"
  add_foreign_key "invites", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
end
