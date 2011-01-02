class CreateRingerScores < ActiveRecord::Migration
  def self.up
    create_table :ringer_scores do |t|
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
      t.integer :gross
      t.integer :rounds
      t.integer :handicap
      t.integer :net
      t.integer :flight
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :ringer_scores
  end
end
