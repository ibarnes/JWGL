# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101544545443) do

  create_table "dailies", :force => true do |t|
    t.integer  "golfer_id"
    t.integer  "year"
    t.date     "date_of_play"
    t.string   "group"
    t.integer  "hole1"
    t.integer  "hole2"
    t.integer  "hole3"
    t.integer  "hole4"
    t.integer  "hole5"
    t.integer  "hole6"
    t.integer  "hole7"
    t.integer  "hole8"
    t.integer  "hole9"
    t.integer  "putts1"
    t.integer  "putts2"
    t.integer  "putts3"
    t.integer  "putts4"
    t.integer  "putts5"
    t.integer  "putts6"
    t.integer  "putts7"
    t.integer  "putts8"
    t.integer  "putts9"
    t.integer  "gross"
    t.integer  "handicap"
    t.integer  "net"
    t.integer  "total_putts"
    t.integer  "flight"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "point_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events_by_years", :force => true do |t|
    t.integer  "year"
    t.date     "date_of_play"
    t.integer  "event_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "executive_committees", :force => true do |t|
    t.integer  "year"
    t.integer  "golfer_id"
    t.integer  "executive_position_id"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "executive_positions", :force => true do |t|
    t.string   "title"
    t.string   "username"
    t.string   "password"
    t.boolean  "active"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flights", :force => true do |t|
    t.string   "flight"
    t.integer  "high_handicap"
    t.integer  "low_handicap"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "golfers", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "home_phone"
    t.string   "cell"
    t.string   "email"
    t.integer  "year_joined"
    t.boolean  "status"
    t.string   "membership_status"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "birthdate"
  end

  create_table "ringer_scores", :force => true do |t|
    t.integer  "golfer_id"
    t.integer  "year"
    t.date     "date_of_play"
    t.string   "group"
    t.integer  "hole1"
    t.integer  "hole2"
    t.integer  "hole3"
    t.integer  "hole4"
    t.integer  "hole5"
    t.integer  "hole6"
    t.integer  "hole7"
    t.integer  "hole8"
    t.integer  "hole9"
    t.integer  "gross"
    t.integer  "rounds"
    t.integer  "handicap"
    t.integer  "net"
    t.integer  "flight"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "yearlies", :force => true do |t|
    t.integer  "golfer_id"
    t.integer  "year"
    t.float    "dues_amount_paid"
    t.float    "check_num"
    t.float    "luncheon_amt_paid"
    t.string   "luncheon_meal"
    t.integer  "luncheon_check_num"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "years", :force => true do |t|
    t.integer  "year"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
