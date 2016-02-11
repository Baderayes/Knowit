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

ActiveRecord::Schema.define(version: 20160211110624) do

  create_table "answers", force: true do |t|
    t.string "answer_1"
    t.string "answer_2"
    t.string "answer_3"
    t.string "answer_4"
    t.string "correct_answer"
    t.string "mode_id"
    t.string "question_id"
  end

  create_table "categories", force: true do |t|
    t.string "category_name"
    t.string "category_description"
  end

  create_table "difficulties", force: true do |t|
    t.string "difficulty_type"
  end

  create_table "games", force: true do |t|
    t.string   "players_number"
    t.string   "mode"
    t.string   "Difficulty"
    t.string   "category_type"
    t.integer  "time_for_each_question"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games_users", id: false, force: true do |t|
    t.integer "game_id"
    t.integer "user_id"
  end

  add_index "games_users", ["game_id", "user_id"], name: "index_games_users_on_game_id_and_user_id", using: :btree

  create_table "kid_adult_modes", force: true do |t|
    t.string "mode_type"
  end

  create_table "questions", force: true do |t|
    t.string  "question_content"
    t.string  "question_description"
    t.integer "category_id"
    t.integer "kid_adult_mode_id"
  end

  create_table "scores", force: true do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.integer  "score_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scores", ["game_id", "user_id"], name: "index_scores_on_game_id_and_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
