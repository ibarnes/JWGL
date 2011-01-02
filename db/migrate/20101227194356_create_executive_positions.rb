class CreateExecutivePositions < ActiveRecord::Migration
  def self.up
    create_table :executive_positions do |t|
      t.string :title
      t.string :username
      t.string :password
      t.boolean :active
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :executive_positions
  end
end
