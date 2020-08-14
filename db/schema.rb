# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_11_080045) do

  create_table "artistes", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profil_artiste_id"
    t.index ["email"], name: "index_artistes_on_email", unique: true
    t.index ["profil_artiste_id"], name: "index_artistes_on_profil_artiste_id"
    t.index ["reset_password_token"], name: "index_artistes_on_reset_password_token", unique: true
  end

  create_table "profil_artistes", force: :cascade do |t|
    t.string "nom_de_scene"
    t.string "nom"
    t.string "prenom"
    t.string "description"
    t.integer "artiste_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artiste_id"], name: "index_profil_artistes_on_artiste_id"
  end

  add_foreign_key "artistes", "profil_artistes"
  add_foreign_key "profil_artistes", "artistes"
end
