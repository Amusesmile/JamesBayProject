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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121001075358) do

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "groups_photos", :id => false, :force => true do |t|
    t.integer "photo_id"
    t.integer "group_id"
  end

  create_table "microposts", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "photo_id"
  end

  add_index "microposts", ["photo_id", "created_at"], :name => "index_microposts_on_photo_id_and_created_at"
  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "photos", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photographer"
    t.string   "collection"
    t.string   "format"
    t.string   "size"
    t.string   "location"
    t.string   "title"
    t.string   "creeSyllables"
    t.text     "description"
    t.text     "longDescription"
    t.text     "subjects"
    t.string   "imageType"
    t.integer  "aestheticRating"
    t.integer  "ethnographicRating"
    t.integer  "communityRating"
    t.date     "dateTaken"
    t.string   "url"
    t.string   "coordinates"
    t.integer  "id2"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
