class BusStop

  attr_reader :name
  attr_accessor :queue

  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def add_person_to_queue(person)
    @queue.push(person)
    end


end
