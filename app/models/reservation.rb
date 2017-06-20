class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :party_size, presence: true, length: { in: 1..10 }
  validate :has_capacity

  def has_capacity
    if restaurant.capacity_remaining(date, time) >= party_size
      return true
    else
      errors.add(:restaurant_id, 'Sorry, the restaurant is over capacity at this time and date')
    end
  end


end
