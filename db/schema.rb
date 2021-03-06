# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090822214252) do

  create_table "hosts", :force => true do |t|
    t.string   "name"
    t.string   "whois"
    t.string   "ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "header"
    t.text     "body"
    t.integer  "host_id"
    t.integer  "user_id",                :default => 0
    t.string   "unregistered_user_name"
    t.integer  "times_viewed",           :default => 0
    t.integer  "post_subject_id"
    t.boolean  "has_pics"
    t.boolean  "has_urls"
    t.integer  "post_id"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
