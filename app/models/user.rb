class User < ActiveRecord::Base
  attr_accessible :fname, :lname
  has_many :posts
  has_one :location
end
