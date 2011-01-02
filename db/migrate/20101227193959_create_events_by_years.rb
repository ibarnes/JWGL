class CreateEventsByYears < ActiveRecord::Migration
  def self.up
    create_table :events_by_years do |t|
      t.integer :year
      t.date :date_of_play
      t.integer :event_id
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :events_by_years
  end
end
