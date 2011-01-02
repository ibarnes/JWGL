class CreateGolfers < ActiveRecord::Migration
  def self.up
    create_table :golfers do |t|
      t.string :firstname
      t.string :lastname
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.date :birthdate
      t.string :home_phone
      t.string :cell
      t.string :email
      t.integer :year_joined
      t.boolean :status
      t.string :membership_status
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :golfers
  end
end
