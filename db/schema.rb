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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140422084738) do

  create_table "ads", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.string   "website"
    t.integer  "district_id"
    t.integer  "mandal_id"
    t.integer  "constitution_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "constitutions", :force => true do |t|
    t.integer  "district_id"
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "departments", :force => true do |t|
    t.integer  "minister_id"
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "category"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "job_positions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
  end

  create_table "jobs", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
  end

  create_table "mandals", :force => true do |t|
    t.string   "name"
    t.integer  "district_id"
    t.text     "description"
    t.string   "website"
    t.string   "facebook_page"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "ministers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "facebook_page"
    t.integer  "constitution_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "image"
    t.string   "banner"
    t.string   "candiate_name"
  end

  create_table "mlas", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "facebook_page"
    t.integer  "constitution_id"
    t.text     "personal_info"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "mps", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "facebook_page"
    t.integer  "district_id"
    t.text     "personal_info"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "news", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "offices", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "facebook_page"
    t.string   "ph_no1"
    t.string   "ph_no2"
    t.text     "address"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "official_profiles", :force => true do |t|
    t.string   "name"
    t.integer  "job_position_id"
    t.text     "description"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "online_services", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.string   "website"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
    t.string   "banner"
  end

  create_table "private_sectors", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "facebook_page"
    t.integer  "district_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "image"
    t.string   "banner"
    t.string   "category"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "state_cadres", :force => true do |t|
    t.string   "name"
    t.string   "candiate_name"
    t.text     "description"
    t.string   "ph_no1"
    t.string   "ph_no2"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "image"
    t.string   "banner"
    t.string   "proiorty"
  end

  create_table "tenders", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.string   "website"
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "banner"
    t.string   "image"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "image"
    t.string   "banner"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "villages", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "facebook_page"
    t.string   "website"
    t.integer  "mandal_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "image"
    t.string   "banner"
  end

end
