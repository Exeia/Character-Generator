class AddStatsToCharacter < ActiveRecord::Migration
  def change
	add_column :characters, :str, :integer, :default => 0 
	add_column :characters, :dex, :integer, :default => 0 
	add_column :characters, :con, :integer, :default => 0 
	add_column :characters, :intel, :integer, :default => 0 
	add_column :characters, :wis, :integer, :default => 0 
	add_column :characters, :cha, :integer, :default => 0 

  end


end
