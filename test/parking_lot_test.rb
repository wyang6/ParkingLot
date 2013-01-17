require "minitest/autorun"
require_relative "../src/parking_lot"

class ParkingLotTest < MiniTest::Unit::TestCase
  def test_should_display_available_slots_typically
    lot = ParkingLot.new(1)
    assert lot.has_available_slots
  end

  def test_should_display_available_slot_when_parking_lot_is_full
    lot = ParkingLot.new(0)
    assert !lot.has_available_slots
  end
end