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

ActiveRecord::Schema.define(version: 20200117111004) do

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.string "title"
    t.string "phoneone"
    t.string "phonetwo"
    t.string "phonethree"
    t.string "emailone"
    t.string "emailtwo"
    t.string "worktime"
    t.string "adress"
    t.string "name"
    t.string "surname"
    t.string "facebook"
    t.string "instagram"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contact_id"
    t.integer "max_limit"
    t.index ["slug"], name: "index_cities_on_slug", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "title"
    t.integer "phoneone"
    t.integer "phonetwo"
    t.string "email"
    t.string "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "max_limit"
    t.index ["slug"], name: "index_contacts_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "metatags", force: :cascade do |t|
    t.string "title"
    t.string "keywords"
    t.text "description"
    t.string "page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "points", force: :cascade do |t|
    t.string "title"
    t.string "phoneone"
    t.string "phonetwo"
    t.string "emailone"
    t.string "emailtwo"
    t.string "name"
    t.string "address"
    t.string "worktime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.boolean "coming_soon", default: true
  end

  create_table "tours", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer "priority"
    t.string "banner_file_name"
    t.string "banner_content_type"
    t.integer "banner_file_size"
    t.datetime "banner_updated_at"
  end

end
