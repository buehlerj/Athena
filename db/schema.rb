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

ActiveRecord::Schema.define(version: 20170208183803) do

  create_table "abilities", force: :cascade do |t|
    t.string  "name"
    t.float   "cooldown"
    t.float   "damage_done"
    t.integer "maximum_range"
    t.boolean "is_projectile"
    t.boolean "is_hitscan"
    t.float   "projectile_speed"
    t.string  "information"
    t.integer "hero_id"
    t.index ["hero_id"], name: "index_abilities_on_hero_id"
  end

  create_table "divisions", force: :cascade do |t|
    t.string "name"
  end

  create_table "game_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "objective_team_1"
    t.string "objective_team_2"
  end

  create_table "hero_excells_at_map", id: false, force: :cascade do |t|
    t.integer "hero_id"
    t.integer "map_id"
    t.index ["hero_id", "map_id"], name: "index_hero_excells_at_map_on_hero_id_and_map_id"
    t.index ["hero_id"], name: "index_hero_excells_at_map_on_hero_id"
    t.index ["map_id"], name: "index_hero_excells_at_map_on_map_id"
  end

  create_table "heroes", force: :cascade do |t|
    t.string  "name"
    t.integer "health"
    t.integer "running_speed"
    t.integer "crouching_speed"
    t.string  "origin"
    t.integer "division_id"
    t.index ["division_id"], name: "index_heroes_on_division_id"
  end

  create_table "map_game_types", id: false, force: :cascade do |t|
    t.integer "map_id"
    t.integer "game_type_id"
    t.index ["game_type_id"], name: "index_map_game_types_on_game_type_id"
    t.index ["map_id", "game_type_id"], name: "index_map_game_types_on_map_id_and_game_type_id"
    t.index ["map_id"], name: "index_map_game_types_on_map_id"
  end

  create_table "maps", force: :cascade do |t|
    t.string "name"
    t.string "country"
  end

  create_table "ultimates", force: :cascade do |t|
    t.string  "name"
    t.integer "time"
    t.integer "total_damage_done"
    t.float   "damage_per_second"
    t.float   "headshot_multiplier"
    t.integer "average_charge_rate"
    t.integer "hero_id"
    t.index ["hero_id"], name: "index_ultimates_on_hero_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string  "name"
    t.integer "capacity"
    t.float   "damage_per_second"
    t.float   "shots_per_second"
    t.float   "damage_per_shot"
    t.float   "headshot_multiplier"
    t.boolean "is_projectile"
    t.boolean "is_hitscan"
    t.float   "projectile_speed"
    t.integer "hero_id"
    t.index ["hero_id"], name: "index_weapons_on_hero_id"
  end

end
