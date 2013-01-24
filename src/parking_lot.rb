class ParkingLot

  def initialize(capacity)
    @capacity = capacity
  end

  def has_available_slots
    return @capacity > 0
  end

  def park(car)
    return 1
  end
end
