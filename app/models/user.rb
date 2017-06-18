class User < ApplicationRecord
<<<<<<< HEAD
   has_many :reservations
   has_one :restaurant
=======
  has_secure_password 
>>>>>>> 7aab826afa876285a0400980fd6766ece76788e6
end
