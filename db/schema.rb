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

ActiveRecord::Schema.define(version: 2020_02_15_093553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaign_influencers", force: :cascade do |t|
    t.bigint "campaign_id", null: false
    t.bigint "influencer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["campaign_id"], name: "index_campaign_influencers_on_campaign_id"
    t.index ["influencer_id"], name: "index_campaign_influencers_on_influencer_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.date "starts_at"
    t.date "ends_at"
    t.string "goal"
    t.string "target"
    t.string "message"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "hashtag", default: [], array: true
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "influencer_tags", force: :cascade do |t|
    t.bigint "influencer_id"
    t.bigint "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["influencer_id"], name: "index_influencer_tags_on_influencer_id"
    t.index ["tag_id"], name: "index_influencer_tags_on_tag_id"
  end

  create_table "influencers", force: :cascade do |t|
    t.string "name"
    t.string "community_location"
    t.string "community_age"
    t.integer "community_size"
    t.integer "women_stats"
    t.integer "men_stats"
    t.string "engagement_rate"
    t.string "media"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "metrics", force: :cascade do |t|
    t.date "post_date"
    t.string "social_media"
    t.string "media_type"
    t.string "hashtag"
    t.integer "impression"
    t.integer "click"
    t.integer "like"
    t.integer "comment"
    t.float "engagement"
    t.float "emv"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "campaign_id"
    t.bigint "influencer_id"
    t.index ["campaign_id"], name: "index_metrics_on_campaign_id"
    t.index ["influencer_id"], name: "index_metrics_on_influencer_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "campaign_influencers", "campaigns"
  add_foreign_key "campaign_influencers", "influencers"
  add_foreign_key "campaigns", "users"
  add_foreign_key "influencer_tags", "influencers"
  add_foreign_key "influencer_tags", "tags"
end
