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

ActiveRecord::Schema.define(:version => 20130907083847) do

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "slug"
  end

  create_table "artists_releases", :id => false, :force => true do |t|
    t.integer "artist_id"
    t.integer "release_id"
  end

  create_table "assets", :force => true do |t|
    t.integer  "piece_id",    :null => false
    t.integer  "medium",      :null => false
    t.string   "title",       :null => false
    t.string   "description"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_comments", :force => true do |t|
    t.integer  "blog_post_id"
    t.integer  "user_id"
    t.string   "user_ip"
    t.string   "user_agent"
    t.string   "referrer"
    t.string   "name"
    t.string   "site_url"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at"
  end

  add_index "blog_comments", ["blog_post_id"], :name => "index_blog_comments_on_blog_post_id"

  create_table "blog_images", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "blog_post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blog_images", ["blog_post_id"], :name => "index_blog_images_on_blog_post_id"

  create_table "blog_posts", :force => true do |t|
    t.string   "title",                           :null => false
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published",    :default => false, :null => false
    t.integer  "user_id"
    t.datetime "published_at"
  end

  create_table "blog_tags", :force => true do |t|
    t.integer "blog_post_id"
    t.string  "tag",          :null => false
  end

  add_index "blog_tags", ["blog_post_id"], :name => "index_blog_tags_on_blog_post_id"
  add_index "blog_tags", ["tag"], :name => "index_blog_tags_on_tag"

  create_table "links", :force => true do |t|
    t.integer  "artist_id"
    t.string   "location",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pieces", :force => true do |t|
    t.integer "release_id",  :null => false
    t.integer "artist_id",   :null => false
    t.string  "title",       :null => false
    t.string  "description"
  end

  create_table "podcasts", :force => true do |t|
    t.string   "title",                         :null => false
    t.integer  "artist_id",                     :null => false
    t.string   "file_name",                     :null => false
    t.boolean  "available",  :default => false
    t.string   "genre",                         :null => false
    t.string   "cat_no",                        :null => false
    t.integer  "duration",                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "release_links", :force => true do |t|
    t.string   "location",   :null => false
    t.integer  "release_id", :null => false
    t.string   "vendor",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "link_type"
  end

  create_table "releases", :force => true do |t|
    t.string   "title"
    t.text     "long_desc"
    t.datetime "release_date"
    t.string   "short_desc"
    t.string   "cat"
    t.integer  "artist_id"
    t.boolean  "available"
  end

  create_table "track_lists", :force => true do |t|
    t.integer  "podcast_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", :force => true do |t|
    t.integer  "track_list_id", :null => false
    t.string   "artist_title",  :null => false
    t.string   "label"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
