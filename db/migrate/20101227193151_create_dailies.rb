class CreateDailies < ActiveRecord::Migration
  def self.up
    create_table :dailies do |t|
      t.integer :golfer_id
      t.integer :year
      t.date :date_of_play
      t.string :group
      t.integer :hole1
      t.integer :hole2
      t.integer :hole3
      t.integer :hole4
      t.integer :hole5
      t.integer :hole6
      t.integer :hole7
      t.integer :hole8
      t.integer :hole9
      t.integer :putts1
      t.integer :putts2
      t.integer :putts3
      t.integer :putts4
      t.integer :putts5
      t.integer :putts6
      t.integer :putts7
      t.integer :putts8
      t.integer :putts9
      t.integer :gross
      t.integer :handicap
      t.integer :net
      t.integer :total_putts
      t.integer :flight
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :dailies
  end
end
