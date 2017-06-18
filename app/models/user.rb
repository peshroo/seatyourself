class User < ActiveRecord::Base
  has_secure_password

  has_many :reservations
  has_one :restaurant
end
