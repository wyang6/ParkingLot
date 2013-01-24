require "minitest/autorun"
require_relative "../src/parking_lot"
require_relative "../src/car"
require_relative "../src/no_available_slot_exception"

class ParkingLotTest < MiniTest::Unit::TestCase
  def test_should_display_available_slots_typically
    lot = ParkingLot.new(1)
    assert lot.has_available_slots
  end

  def test_should_display_available_slot_when_parking_lot_is_full
    lot = ParkingLot.new(0)
    assert !lot.has_available_slots
  end

  def test_should_return_ticket_when_there_is_available_slot
    lot = ParkingLot.new(1)
    ticket = lot.park(Car.new)
    refute_nil ticket
  end

  def test_should_throw_exception_when_there_is_no_available_slot
    assert_raises(NoAvailableSlotException) {
      lot = ParkingLot.new(0)
      lot.park(Car.new)
    }
  end

end