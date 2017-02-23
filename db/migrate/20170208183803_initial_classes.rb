class InitialClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :heroes do |t|
      t.string :name
      t.integer :health
      t.integer :running_speed
      t.integer :crouching_speed
      t.string :origin

      t.belongs_to :division
    end

    create_table :divisions do |t|
      t.string :name
    end

    create_table :abilities do |t|
      t.string :name
      t.float :cooldown
      t.float :damage_done
      t.integer :maximum_range
      t.boolean :is_projectile
      t.boolean :is_hitscan
      t.float :projectile_speed
      t.string :information

      t.belongs_to :hero
    end

    create_table :weapons do |t|
      t.string :name
      t.integer :capacity
      t.float :damage_per_second
      t.float :shots_per_second
      t.float :damage_per_shot
      t.float :headshot_multiplier
      t.boolean :is_projectile
      t.boolean :is_hitscan
      t.float :projectile_speed

      t.belongs_to :hero
    end

    create_table :ultimates do |t|
      t.string :name
      t.integer :time
      t.integer :total_damage_done
      t.float :damage_per_second
      t.float :headshot_multiplier
      t.integer :average_charge_rate

      t.belongs_to :hero
    end

    create_table :maps do |t|
      t.string :name
      t.string :country
    end

    create_table :game_types do |t|
      t.string :name
      t.string :description
      t.string :objective_team_1
      t.string :objective_team_2
    end

    create_table :hero_excells_at_map, id: false do |t|
      t.references :hero
      t.references :map
    end
    add_index :hero_excells_at_map, [:hero_id, :map_id]

    create_table :map_game_types, id: false do |t|
      t.references :map
      t.references :game_type
    end
    add_index :map_game_types, [:map_id, :game_type_id]
  end
end
