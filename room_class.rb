
class Room

  attr_accessor 

  def initialize(name, doors_array, room_type, *additional_rules)
    @name = name
    @entered = false
    @room_type = room_type
    @doors = {}
    @door_names = {}
    doors_setup(number_of_doors)
    add_rules = additional_rules
  end

  def doors_setup(number_of_doors)
    door = 1
    number_of_doors.times do
      @doors[door] = ""
      @door_names[door] = "Unknown"
      door += 1
    end
  end
end

test = Room.new("Test Room", 3, "Event")

p test
