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

ActiveRecord::Schema.define(:version => 20110720140626) do

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.integer  "beatport_artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists_tracks", :id => false, :force => true do |t|
    t.integer "artist_id"
    t.integer "track_id"
  end

  create_table "genres", :force => true do |t|
    t.decimal  "beatport_genre_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", :force => true do |t|
    t.string   "IP"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "track_id"
  end

  create_table "soundcloud_tracks", :force => true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "soundcloud_id"
    t.integer  "track_id"
    t.string   "stream_url"
    t.integer  "duration"
  end

  create_table "tracks", :force => true do |t|
    t.integer  "position"
    t.integer  "genre_id"
    t.string   "mix_name"
    t.integer  "beatport_track_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "likes_count",       :default => 0
  end

end
