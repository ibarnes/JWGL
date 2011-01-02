class UpdateGolfers < ActiveRecord::Migration
  def self.up
   remove_column :golfers, :birthdate
   add_column :golfers, :birthdate, :date 
  end

  def self.down
    drop_table :golfers
  end
end
