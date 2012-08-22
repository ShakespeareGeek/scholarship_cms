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

ActiveRecord::Schema.define(:version => 20120821034514) do

  create_table "provider_contacts", :force => true do |t|
    t.integer  "provider_id"
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "address_3"
    t.string   "city"
    t.integer  "state_id"
    t.string   "postal_code"
    t.string   "email"
    t.string   "url"
    t.integer  "sort_order"
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scholarship_providers", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "featured_position"
  end

  create_table "scholarships", :force => true do |t|
    t.integer  "provider_id"
    t.string   "name"
    t.text     "description"
    t.text     "requirements"
    t.string   "award_size"
    t.date     "deadline_date"
    t.string   "deadline_comment"
    t.string   "application_url"
    t.boolean  "renewable"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number_of_awards"
    t.boolean  "one_time"
    t.integer  "award_min"
    t.integer  "award_max"
  end

  create_table "scholarships_tags", :id => false, :force => true do |t|
    t.integer "scholarship_id"
    t.integer "tag_id"
  end

  add_index "scholarships_tags", ["scholarship_id", "tag_id"], :name => "index_scholarships_tags_on_scholarship_id_and_tag_id"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suggestions", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.text     "description"
    t.string   "url"
    t.string   "submitter_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tag_contexts", :force => true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  add_index "tag_contexts", ["permalink"], :name => "index_tag_contexts_on_permalink"

  create_table "tags", :force => true do |t|
    t.string   "label"
    t.integer  "tag_context_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
    t.string   "teaser"
    t.text     "writeup"
    t.string   "icon"
  end

  add_index "tags", ["permalink"], :name => "index_tags_on_permalink"

end
