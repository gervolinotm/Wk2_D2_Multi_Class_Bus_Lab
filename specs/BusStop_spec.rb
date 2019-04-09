require('minitest/autorun')
require('minitest/rg')
require_relative('../BusStop.rb')
require_relative('../Person.rb')

class TestBusStop < MiniTest::Test

  def setup()
    @person1 = Person.new("Satan", "6666")
    @person2 = Person.new("Jeff", "24")

    queue = [@person1]

    @bus_stop1 = BusStop.new("Regrets", queue)
  end

  def test_bus_stop_has_name
    assert_equal("Regrets", @bus_stop1.name)
  end

  def test_bus_stop_has_a_queue
    assert_equal("Satan", @bus_stop1.queue[0].name)
  end

  def test_could_you_please_scooch
    @bus_stop1.add_person_to_queue(@person2)
    assert_equal(@person2, @bus_stop1.queue[1])
  end
end
