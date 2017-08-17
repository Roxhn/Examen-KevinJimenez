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

ActiveRecord::Schema.define(version: 20170815002833) do

  create_table "constelacions", force: :cascade do |t|
    t.string   "Nombre"
    t.float    "CoordenadaA"
    t.float    "CoordenadaB"
    t.binary   "Estado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "indices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planeta", force: :cascade do |t|
    t.string   "nombre"
    t.float    "coordenadaa"
    t.float    "coordenadab"
    t.binary   "estado"
    t.string   "sistema"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sistemas", force: :cascade do |t|
    t.string   "nombre"
    t.float    "coordeanadaa"
    t.float    "coordenadab"
    t.binary   "estado"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
