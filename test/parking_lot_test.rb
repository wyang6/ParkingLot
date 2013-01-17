require "minitest/autorun"
require_relative "../src/parking_lot"

class ParkingLotTest < MiniTest::Unit::TestCase
  def test_should_display_has_empty_slot
    lot = ParkingLot.new(1)
    assert lot.has_empty_slot
  end
end