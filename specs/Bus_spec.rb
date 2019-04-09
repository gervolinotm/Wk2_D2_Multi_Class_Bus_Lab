require('minitest/autorun')
require('minitest/rg')
require_relative('../Bus.rb')
require_relative('../BusStop.rb')
require_relative('../Person.rb')

class TestBus < MiniTest::Test

  def setup()
    @person1 = Person.new("Satan", "6666")
    @person2 = Person.new("Jeff", "24")

    @queue = [@person1, @person2]
    @bus_stop1 = BusStop.new('Regrets', @queue )

    passengers = []
    @bus1 = Bus.new("66", "Hell", passengers)
    @bus2 = Bus.new("22", "Ocean Terminal", passengers)
  end

  def test_bus_has_a_route
    assert_equal("66", @bus1.route)
  end

  def test_bus_has_a_destination
    assert_equal("Ocean Terminal", @bus2.destination)
  end

  def test_bus_is_drivable
    assert_equal("Brum Brum", @bus1.drive_method)
  end

  def test_how_many_passengers_are_on_the_bus
    assert_equal(0, @bus1.number_of_passengers)
  end

  def test_all_aboard_the_party_bus
    assert_equal(["Bob"], @bus1.pick_up("Bob"))
  end

  def test_passenger_escaped
    assert_equal([], @bus1.drop_off("Claudia"))
  end

  def test_get_off_my_bus
    assert_equal(0, @bus1.empty)
  end

  def test_all_aboard_brum_brum
    assert_equal([@person1, @person2], @bus1.pick_up_all_passengers_from_stop(@queue))
  end




end
