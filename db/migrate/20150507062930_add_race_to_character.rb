class AddRaceToCharacter < ActiveRecord::Migration
  def change
	add_column :characters, :race_id , :string 
  end
end
