class CreateExecutiveCommittees < ActiveRecord::Migration
  def self.up
    create_table :executive_committees do |t|
      t.integer :year
      t.integer :golfer_id
      t.integer :executive_position_id
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :executive_committees
  end
end
