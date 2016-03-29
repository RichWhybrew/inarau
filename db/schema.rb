# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160328232052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "akapens", force: :cascade do |t|
    t.integer  "correct"
    t.integer  "incorrect"
    t.integer  "vocab_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "akapens", ["user_id"], name: "index_akapens_on_user_id", using: :btree
  add_index "akapens", ["vocab_id"], name: "index_akapens_on_vocab_id", using: :btree

  create_table "belts", force: :cascade do |t|
    t.string   "color"
    t.integer  "user_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "belts", ["language_id"], name: "index_belts_on_language_id", using: :btree
  add_index "belts", ["user_id"], name: "index_belts_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kata", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "kata", ["user_id"], name: "index_kata_on_user_id", using: :btree

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "score"
    t.integer  "user_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "kata_id"
  end

  add_index "scores", ["language_id"], name: "index_scores_on_language_id", using: :btree
  add_index "scores", ["user_id"], name: "index_scores_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "admin"
  end

  create_table "vocabs", force: :cascade do |t|
    t.string   "native"
    t.string   "trans"
    t.integer  "language_id"
    t.integer  "category_id"
    t.integer  "katum_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "vocabs", ["category_id"], name: "index_vocabs_on_category_id", using: :btree
  add_index "vocabs", ["katum_id"], name: "index_vocabs_on_katum_id", using: :btree
  add_index "vocabs", ["language_id"], name: "index_vocabs_on_language_id", using: :btree

  add_foreign_key "akapens", "users"
  add_foreign_key "akapens", "vocabs"
  add_foreign_key "belts", "languages"
  add_foreign_key "belts", "users"
  add_foreign_key "kata", "users"
  add_foreign_key "scores", "languages"
  add_foreign_key "scores", "users"
  add_foreign_key "vocabs", "categories"
  add_foreign_key "vocabs", "kata"
  add_foreign_key "vocabs", "languages"
end
