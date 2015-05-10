class CreateCharacterRaces < ActiveRecord::Migration
  def change
    create_table :character_races do |t|
      t.string :name
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :intel
      t.integer :wis
      t.integer :cha

      t.timestamps
    end
  end
end
