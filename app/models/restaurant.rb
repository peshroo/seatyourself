class Restaurant < ApplicationRecord
  has_many :reservations

  CAPACITY = 20
  OPENS = 11   #11am
  CLOSES = 23  #11pm

  def capacity_remaining(date, time)     #only matters for given date and time. (one hours blocks??)
    total = 0
    reservations.where(date: date, time: time).each do |reservation|  #every reso for that date/time
      total += reservation.party_size
    end
    CAPACITY - total
  end
  
  def open_closed(time)
    if time > OPENS && time < CLOSES
      true
    else
      false
    end
  end


end
