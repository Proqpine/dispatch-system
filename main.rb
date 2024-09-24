# frozen_string_literal: true

# Elevator in a building
class Elevator
  def initialize(floors)
    @floors = floors
    @position = 0
  end

  def select_floor(destination, call_floor)
    @call_floor = call_floor
    @destination = destination
  end

  def call_elevator
    to_go = @position + @call_floor
    return if to_go > @destination

    @position = to_go
    puts "Called on #{to_go}"
  end

  private

  def elevator_position
    @position
  end
end

gs_elevator = Elevator.new(2)
gs_elevator.select_floor(1, 1)
gs_elevator.call_elevator
