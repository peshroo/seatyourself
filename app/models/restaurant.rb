class Restaurant < ApplicationRecord
  has_many :reservations

  CAPACITY = 20

  def capacity_remaining(date, time)
    total = 0
    reservations.where(date: date, time: time).each do |reservation|  #every reso for that date/time
      total += reservation.party_size
    end
    CAPACITY - total
  end

  def at_capacity?
    if restaurant.capacity_remaining(date, time) >= party_size
      return true
    else
      errors.add(:restaurant_id, 'Sorry, the restaurant is at full capacity at that date and time.')
    end
  end

end
