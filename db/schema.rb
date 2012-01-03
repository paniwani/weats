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

ActiveRecord::Schema.define(:version => 20120103184954) do

  create_table "ingredients", :force => true do |t|
    t.integer  "unit_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meal_queue_recipes", :force => true do |t|
    t.integer  "meal_queue_id"
    t.integer  "recipe_id"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meal_queues", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipe_ingredients", :force => true do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "quantity"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.string   "source"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_list_ingredients", :force => true do |t|
    t.integer  "shopping_list_id"
    t.integer  "ingredient_id"
    t.boolean  "purchased"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "quantity"
  end

  create_table "shopping_lists", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", :force => true do |t|
    t.string   "recipe_name"
    t.string   "shopping_name"
    t.string   "type"
    t.float    "conversion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
