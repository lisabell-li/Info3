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

ActiveRecord::Schema.define(:version => 20130625191542) do

  create_table "attachments", :force => true do |t|
    t.string   "description"
    t.string   "file"
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

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
    t.integer  "course_id"
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
    t.integer  "deck_id"
    t.integer  "prev_fach"
    t.boolean  "erraten"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "student_id"
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
    t.string   "course_id"
    t.string   "attachment"
  end

end
