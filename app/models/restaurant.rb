class Restaurant < ApplicationRecord
  has_many :reservations

  CAPACITY = 20

  def capacity_remaining(date, time)     #only matters for given date and time. (one hours blocks??)
    total = 0
    reservations.where(date: date, time: time).each do |reservation|  #every reso for that date/time
      total += reservation.party_size
    end
    CAPACITY - total
  end

  # def open?(time)
  #   if time > opens && time < closes
  #     return true
  #   else
  #     errors.add(:restaurant_id, 'Sorry, the restaurant is closed at that time')
  

end
