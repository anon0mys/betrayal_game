
class Character

  attr_accessor :current_room, :floor, :items, :stats

  def initialize
    @current_room = "Outside"
    @floor = :main
    @stats = { speed: 4, might: 4, sanity: 4, knowledge: 4 }
    @items = {}
  end

end
