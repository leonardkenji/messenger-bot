# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_05_10_170001) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "conversation_notes", force: :cascade do |t|
    t.text "content", null: false
    t.bigint "conversation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_conversation_notes_on_conversation_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.text "advice"
    t.datetime "created_at", null: false
    t.bigint "customer_id", null: false
    t.datetime "insights_generated_at"
    t.string "status", default: "active", null: false
    t.string "subject"
    t.text "summary"
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_conversations_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.boolean "auto_reply", default: true, null: false
    t.datetime "created_at", null: false
    t.string "fb_sender_id"
    t.string "name"
    t.string "phone_number"
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "conversation_id", null: false
    t.datetime "created_at", null: false
    t.string "message_type"
    t.string "role"
    t.text "translated_content"
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
  end

  add_foreign_key "conversation_notes", "conversations"
  add_foreign_key "conversations", "customers"
  add_foreign_key "messages", "conversations"
end
