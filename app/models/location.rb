class Location < ActiveRecord::Base
  attr_accessible :city, :user_id
  belongs_to :user
end
