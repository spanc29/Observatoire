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

ActiveRecord::Schema.define(:version => 20111205211837) do

  create_table "listes", :force => true do |t|
    t.string   "quoi"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prixes", :force => true do |t|
    t.date     "date"
    t.float    "montant"
    t.string   "type_filiere"
    t.text     "commentaire"
    t.string   "tva"
    t.string   "neuf"
    t.string   "difficulte"
    t.string   "departement"
    t.string   "type_facture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dimension"
    t.integer  "liste_id"
  end

end
