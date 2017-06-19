class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :party_size, presence: true, length: { in: 1..10 }
end
