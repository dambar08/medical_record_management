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

ActiveRecord::Schema[8.0].define(version: 2025_08_26_023558) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "alert_recipients", force: :cascade do |t|
    t.bigint "alert_id"
    t.bigint "user_id"
    t.datetime "read_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id"], name: "index_alert_recipients_on_alert_id"
    t.index ["user_id"], name: "index_alert_recipients_on_user_id"
  end

  create_table "alerts", force: :cascade do |t|
    t.text "text"
    t.boolean "satisfied_by_any", default: false, null: false
    t.datetime "read_at"
    t.datetime "expired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allergens", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "encounter_id"
    t.string "comment", limit: 1024
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["encounter_id"], name: "index_allergens_on_encounter_id"
    t.index ["patient_id"], name: "index_allergens_on_patient_id"
  end

  create_table "allergies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "announcements", force: :cascade do |t|
    t.string "title"
    t.string "announcement_type"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cohert_memberships", force: :cascade do |t|
    t.bigint "cohert_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohert_id", "patient_id"], name: "index_cohert_memberships_on_cohert_id_and_patient_id", unique: true
    t.index ["cohert_id"], name: "index_cohert_memberships_on_cohert_id"
    t.index ["patient_id"], name: "index_cohert_memberships_on_patient_id"
  end

  create_table "coherts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_coherts_on_user_id"
  end

  create_table "concept_answers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concept_attributes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concept_classes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concepts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.bigint "encounter_id"
    t.string "clinical_status", null: false
    t.string "verification_status", null: false
    t.bigint "condition_id"
    t.string "additional_detail"
    t.date "onset_date"
    t.date "end_date"
    t.date "end_reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition_id"], name: "index_conditions_on_condition_id"
    t.index ["encounter_id"], name: "index_conditions_on_encounter_id"
  end

  create_table "dianogses", force: :cascade do |t|
    t.bigint "encounter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["encounter_id"], name: "index_dianogses_on_encounter_id"
  end

  create_table "drug_ingredients", force: :cascade do |t|
    t.bigint "drug_id", null: false
    t.bigint "concept_id"
    t.bigint "units_id"
    t.float "strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concept_id"], name: "index_drug_ingredients_on_concept_id"
    t.index ["drug_id"], name: "index_drug_ingredients_on_drug_id"
    t.index ["units_id"], name: "index_drug_ingredients_on_units_id"
  end

  create_table "drugs", force: :cascade do |t|
    t.bigint "concept_id"
    t.integer "maximum_daily_dose", null: false
    t.integer "minimum_daily_dose", null: false
    t.float "strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concept_id"], name: "index_drugs_on_concept_id"
  end

  create_table "encounters", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "visit_id"
    t.datetime "encountered_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_encounters_on_patient_id"
    t.index ["visit_id"], name: "index_encounters_on_visit_id"
  end

  create_table "location_tag_maps", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "location_tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id", "location_tag_id"], name: "index_location_tag_maps_on_location_id_and_location_tag_id", unique: true
    t.index ["location_id"], name: "index_location_tag_maps_on_location_id"
    t.index ["location_tag_id"], name: "index_location_tag_maps_on_location_tag_id"
  end

  create_table "location_tags", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "address1"
    t.string "address2"
    t.string "address3"
    t.string "address4"
    t.string "country"
    t.string "postal_code"
    t.string "latitude"
    t.string "longitude"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_locations_on_location_id"
  end

  create_table "notification_templates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "encounter_id"
    t.bigint "previous_order_id"
    t.bigint "order_reason_id"
    t.string "action"
    t.string "fulfiller_status"
    t.date "activated_on"
    t.string "instructions"
    t.date "auto_expire_on"
    t.string "order_number"
    t.date "scheduled_on"
    t.date "stopped_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["encounter_id"], name: "index_orders_on_encounter_id"
    t.index ["order_reason_id"], name: "index_orders_on_order_reason_id"
    t.index ["patient_id"], name: "index_orders_on_patient_id"
    t.index ["previous_order_id"], name: "index_orders_on_previous_order_id"
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationship_types", force: :cascade do |t|
    t.string "a_is_to_b"
    t.string "b_is_to_a"
    t.integer "weight", default: 0
    t.boolean "preferred", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.bigint "patient_a_id", null: false
    t.bigint "relationship_type_id", null: false
    t.bigint "patient_b_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_a_id"], name: "index_relationships_on_patient_a_id"
    t.index ["patient_b_id"], name: "index_relationships_on_patient_b_id"
    t.index ["relationship_type_id"], name: "index_relationships_on_relationship_type_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "service_orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "settings", force: :cascade do |t|
    t.string "var", null: false
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["var"], name: "index_settings_on_var", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.string "locale", default: "en", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "whodunnit"
    t.datetime "created_at"
    t.bigint "item_id", null: false
    t.string "item_type", null: false
    t.string "event", null: false
    t.text "object"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  create_table "visit_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "location_id"
    t.bigint "visit_type_id"
    t.bigint "indication_id"
    t.date "started_on", null: false
    t.date "stopped_on", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["indication_id"], name: "index_visits_on_indication_id"
    t.index ["location_id"], name: "index_visits_on_location_id"
    t.index ["patient_id"], name: "index_visits_on_patient_id"
    t.index ["visit_type_id"], name: "index_visits_on_visit_type_id"
  end

  add_foreign_key "cohert_memberships", "coherts"
  add_foreign_key "cohert_memberships", "patients"
  add_foreign_key "coherts", "users"
  add_foreign_key "conditions", "encounters"
  add_foreign_key "dianogses", "encounters"
  add_foreign_key "drug_ingredients", "concepts"
  add_foreign_key "drug_ingredients", "concepts", column: "units_id"
  add_foreign_key "drug_ingredients", "drugs"
  add_foreign_key "encounters", "patients"
  add_foreign_key "encounters", "visits"
  add_foreign_key "location_tag_maps", "location_tags"
  add_foreign_key "location_tag_maps", "locations"
  add_foreign_key "locations", "locations"
  add_foreign_key "orders", "encounters"
  add_foreign_key "orders", "orders", column: "order_reason_id"
  add_foreign_key "orders", "orders", column: "previous_order_id"
  add_foreign_key "orders", "patients"
  add_foreign_key "relationships", "patients", column: "patient_a_id"
  add_foreign_key "relationships", "patients", column: "patient_b_id"
  add_foreign_key "relationships", "relationship_types"
  add_foreign_key "sessions", "users"
  add_foreign_key "visits", "concepts", column: "indication_id"
  add_foreign_key "visits", "locations"
  add_foreign_key "visits", "patients"
  add_foreign_key "visits", "visit_types"
end
