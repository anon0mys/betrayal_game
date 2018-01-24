
class Character

  attr_accessor :current_room, :floor, :items, :stats

  def initialize
    @current_room = "Outside"
    @floor = :main
    @stats = { speed: 4, might: 4, sanity: 4, knowledge: 4 }
    @items = {}
  end

  def roll(number = 1) #Rolls a number of 6 sided die
    roll_array = []
    total = 0
    number.times do |roll|
      roll = rand[5] + 1
      total += roll
      roll_array << roll
    end
    puts "Your results: #{roll_array} for a total of #{total}."
    return total
  end

end
