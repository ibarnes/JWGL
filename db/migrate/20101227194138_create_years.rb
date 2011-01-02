class CreateYears < ActiveRecord::Migration
  def self.up
    create_table :years do |t|
      t.integer :year
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :years
  end
end
