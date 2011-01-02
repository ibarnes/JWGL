class Golfer < ActiveRecord::Base

validates_presence_of :firstname, :lastname, :street_address, :email, :city, :zip, :home_phone, :year_joined
has_many :yearlies
has_many :dailies
has_many :ringer_scores
has_one :executive_committee



end



