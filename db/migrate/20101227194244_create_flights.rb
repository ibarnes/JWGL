class CreateFlights < ActiveRecord::Migration
  def self.up
    create_table :flights do |t|
      t.string :flight
      t.integer :high_handicap
      t.integer :low_handicap

      t.timestamps
    end
  end

  def self.down
    drop_table :flights
  end
end
