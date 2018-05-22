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

ActiveRecord::Schema.define(version: 20180513233927) do

  create_table "acquirings", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.integer "machinecategory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machinecategory_id"], name: "index_acquirings_on_machinecategory_id"
  end

  create_table "bookmarks", primary_key: "eid", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "position"
    t.datetime "created_at"
    t.integer "folder_id"
    t.datetime "importdate", null: false
    t.datetime "updated_at", null: false
    t.date "last_viewed"
    t.text "todotext"
    t.index ["folder_id"], name: "index_bookmarks_on_folder_id"
  end

  create_table "bookmarks_tags", id: false, force: :cascade do |t|
    t.integer "bookmark_id"
    t.integer "tag_id"
    t.index ["bookmark_id"], name: "index_bookmarks_tags_on_bookmark_id"
    t.index ["tag_id"], name: "index_bookmarks_tags_on_tag_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "folders", primary_key: "eid", force: :cascade do |t|
    t.integer "parent_id"
    t.string "title"
    t.integer "position"
    t.boolean "isrootparent"
    t.datetime "created_at"
    t.datetime "importdate", null: false
    t.datetime "updated_at", null: false
    t.integer "folderlabel_id"
    t.string "foldercolor"
    t.integer "category_id"
    t.datetime "lastedited"
    t.index ["category_id"], name: "index_folders_on_category_id"
  end

  create_table "folders_tags", id: false, force: :cascade do |t|
    t.integer "folder_id"
    t.integer "tag_id"
    t.index ["folder_id"], name: "index_folders_tags_on_folder_id"
    t.index ["tag_id"], name: "index_folders_tags_on_tag_id"
  end

  create_table "specialtags", force: :cascade do |t|
    t.string "name"
    t.integer "source"
    t.string "direction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "destination"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
