class CreateYearlies < ActiveRecord::Migration
  def self.up
    create_table :yearlies do |t|
      t.integer :golfer_id
      t.integer :year
      t.float :dues_amount_paid
      t.float :check_num
      t.float :luncheon_amt_paid
      t.string :luncheon_meal
      t.integer :luncheon_check_num
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :yearlies
  end
end
