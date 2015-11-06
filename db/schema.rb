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

ActiveRecord::Schema.define(version: 0) do

  create_table "Albums", force: :cascade do |t|
    t.string  "title", limit: 255, null: false
    t.integer "year",  limit: 4
  end

  create_table "Artist_Belong_To", id: false, force: :cascade do |t|
    t.integer "artist_id", limit: 4, default: 0, null: false
    t.integer "genre_id",  limit: 4, default: 0, null: false
  end

  add_index "Artist_Belong_To", ["genre_id"], name: "genre_id", using: :btree

  create_table "Artists", force: :cascade do |t|
    t.string  "name",       limit: 255, null: false
    t.integer "country_id", limit: 4,   null: false
  end

  add_index "Artists", ["country_id"], name: "country_id", using: :btree

  create_table "Collaborates_In", id: false, force: :cascade do |t|
    t.integer  "user_id",     limit: 4, default: 0, null: false
    t.integer  "playlist_id", limit: 4, default: 0, null: false
    t.datetime "since"
  end

  add_index "Collaborates_In", ["playlist_id"], name: "playlist_id", using: :btree

  create_table "Contains", id: false, force: :cascade do |t|
    t.integer  "playlist_id", limit: 4, default: 0, null: false
    t.integer  "song_id",     limit: 4, default: 0, null: false
    t.datetime "added_at"
  end

  add_index "Contains", ["song_id"], name: "song_id", using: :btree

  create_table "Countries", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  add_index "Countries", ["name"], name: "name", unique: true, using: :btree

  create_table "Follows", id: false, force: :cascade do |t|
    t.integer  "follower_id",  limit: 4, default: 0, null: false
    t.integer  "following_id", limit: 4, default: 0, null: false
    t.datetime "since"
  end

  add_index "Follows", ["following_id"], name: "following_id", using: :btree

  create_table "Genres", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  add_index "Genres", ["name"], name: "name", unique: true, using: :btree

  create_table "Included_In", id: false, force: :cascade do |t|
    t.integer "song_id",  limit: 4, default: 0, null: false
    t.integer "album_id", limit: 4, default: 0, null: false
  end

  add_index "Included_In", ["album_id"], name: "album_id", using: :btree

  create_table "Playlists", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_public",              null: false
  end

  create_table "Request_Access_To", id: false, force: :cascade do |t|
    t.integer  "requester_id", limit: 4, default: 0, null: false
    t.integer  "playlist_id",  limit: 4, default: 0, null: false
    t.datetime "request_date"
  end

  add_index "Request_Access_To", ["playlist_id"], name: "playlist_id", using: :btree

  create_table "Song_Belongs_To", id: false, force: :cascade do |t|
    t.integer "song_id",  limit: 4, default: 0, null: false
    t.integer "genre_id", limit: 4, default: 0, null: false
  end

  add_index "Song_Belongs_To", ["genre_id"], name: "genre_id", using: :btree

  create_table "Song_Performed_By", id: false, force: :cascade do |t|
    t.integer "song_id",   limit: 4, default: 0, null: false
    t.integer "artist_id", limit: 4, default: 0, null: false
  end

  add_index "Song_Performed_By", ["artist_id"], name: "artist_id", using: :btree

  create_table "Songs", force: :cascade do |t|
    t.string  "title",     limit: 255, null: false
    t.integer "duration",  limit: 4
    t.string  "url",       limit: 255, null: false
    t.string  "source",    limit: 255, null: false
    t.string  "thumbnail", limit: 255
  end

  create_table "Users", force: :cascade do |t|
    t.string   "username",   limit: 255, null: false
    t.string   "first_name", limit: 255, null: false
    t.string   "last_name",  limit: 255, null: false
    t.string   "password",   limit: 255, null: false
    t.datetime "joined_at"
  end

  add_index "Users", ["username"], name: "username", unique: true, using: :btree

  add_foreign_key "Artist_Belong_To", "Artists", column: "artist_id", name: "Artist_Belong_To_ibfk_1", on_delete: :cascade
  add_foreign_key "Artist_Belong_To", "Genres", column: "genre_id", name: "Artist_Belong_To_ibfk_2", on_delete: :cascade
  add_foreign_key "Artists", "Countries", column: "country_id", name: "Artists_ibfk_1"
  add_foreign_key "Collaborates_In", "Playlists", column: "playlist_id", name: "Collaborates_In_ibfk_2", on_delete: :cascade
  add_foreign_key "Collaborates_In", "Users", column: "user_id", name: "Collaborates_In_ibfk_1", on_delete: :cascade
  add_foreign_key "Contains", "Playlists", column: "playlist_id", name: "Contains_ibfk_1", on_delete: :cascade
  add_foreign_key "Contains", "Songs", column: "song_id", name: "Contains_ibfk_2", on_delete: :cascade
  add_foreign_key "Follows", "Users", column: "follower_id", name: "Follows_ibfk_1", on_delete: :cascade
  add_foreign_key "Follows", "Users", column: "following_id", name: "Follows_ibfk_2", on_delete: :cascade
  add_foreign_key "Included_In", "Albums", column: "album_id", name: "Included_In_ibfk_2", on_delete: :cascade
  add_foreign_key "Included_In", "Songs", column: "song_id", name: "Included_In_ibfk_1", on_delete: :cascade
  add_foreign_key "Request_Access_To", "Playlists", column: "playlist_id", name: "Request_Access_To_ibfk_2", on_delete: :cascade
  add_foreign_key "Request_Access_To", "Users", column: "requester_id", name: "Request_Access_To_ibfk_1", on_delete: :cascade
  add_foreign_key "Song_Belongs_To", "Genres", column: "genre_id", name: "Song_Belongs_To_ibfk_2", on_delete: :cascade
  add_foreign_key "Song_Belongs_To", "Songs", column: "song_id", name: "Song_Belongs_To_ibfk_1", on_delete: :cascade
  add_foreign_key "Song_Performed_By", "Artists", column: "artist_id", name: "Song_Performed_By_ibfk_2", on_delete: :cascade
  add_foreign_key "Song_Performed_By", "Songs", column: "song_id", name: "Song_Performed_By_ibfk_1", on_delete: :cascade
end
