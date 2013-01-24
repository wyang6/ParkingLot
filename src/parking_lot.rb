class ParkingLot

  def initialize(capacity)
    @capacity = capacity
  end

  def has_available_slots
    return @capacity > 0
  end

  def park(car)
    if  @capacity <1
      raise(NoAvailableSlotException.new("no available slots!"))
    else
        return 1
    end
  end
end
