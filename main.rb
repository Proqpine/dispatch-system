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
    to_go = if @position > @call_floor # 0 > 5?
              @position - @call_floor
            else # 0 < 5
              @position + @call_floor
            end
    puts "Elevator on #{@position}"
    return if to_go > @floors

    @position = to_go
    puts "Called to #{@destination} from #{@call_floor}. Elevator on #{@position}"
    travel
  end

  def travel
    while @position > @destination
      puts "On floor #{@position}"
      @position -= 1
      puts 'Arrived at destination' if @position == @destination
    end
  end
end

gs_elevator = Elevator.new(10)
gs_elevator.select_floor(1, 5)
gs_elevator.call_elevator
gs_elevator.travel
