class Dock 
  attr_reader :name, 
              :max_rental_time, 
              :rental_log

  def initialize(name, max_rental_time) 
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter) 
    @rental_log[boat] = renter
  end

  def charge(boat)
    hash = @rental_log.select do |rented_boat, renter|
      rented_boat == boat
    end
      {
        :card_number => hash.values[0].credit_card_number,
        :amount => hash.keys[0].price_per_hour * hash.keys[0].hours_rented
      }
  end
  
end