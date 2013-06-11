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

ActiveRecord::Schema.define(:version => 20130611113601) do

  create_table "courses", :force => true do |t|
    t.string   "coursename"
    t.string   "semester"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "decks", :force => true do |t|
    t.integer  "cycleTime"
    t.integer  "decknumber"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.string   "course"
    t.string   "gameMode"
    t.integer  "currentScore"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "karteikartes", :force => true do |t|
    t.string   "vorname"
    t.string   "nachname"
    t.integer  "current_fach"
    t.integer  "prev_fach"
    t.boolean  "erraten"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "professors", :force => true do |t|
    t.string   "emailAddress"
    t.string   "loginPassword"
    t.integer  "currentScore"
    t.string   "course"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "scores", :force => true do |t|
    t.string   "gameMode"
    t.string   "courseName"
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "vorname"
    t.string   "nachname"
    t.string   "foto"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
