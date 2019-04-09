class Bus

  attr_reader :route, :destination, :passengers

  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drive_method
    return "Brum Brum"
  end

  def number_of_passengers
    @passengers.count()
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    if @passengers != []
      @passengers.delete(passenger)
      return @passengers
    else
      return []
    end
  end

  def empty
    @passengers.clear
    return @passengers.count()
  end

  def pick_up_all_passengers_from_stop(queue)
    p @passengers + queue
  end

end
