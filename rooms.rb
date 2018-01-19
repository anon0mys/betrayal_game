$LOAD_PATH << '.'
require 'modules.rb'
require 'player.rb'

class Room
  include Types

  attr_accessor :doors, :type, :name, :door_names

  def initialize(from_room, room_name, from_room_name)
    @name = room_name
    @room_types = ["Omen", "Event", "Item", "None", "None"]
    @doors = { 1 => "", 2 => "", 3 => "", 4 => "" }
    @door_names = { 1 => "Unknown", 2 => "Unknown", 3 => "Unknown", 4 => "Unknown"}
    @doors[1] = from_room
    @door_names[1] = from_room_name
    @type = @room_types[rand(3)]
    room_event(@type)
  end

  def room_event(room_type)
    case room_type
    when "Omen"
      omen
    when "Event"
      event
    when "Item"
      item
    else
      empty
    end
  end
end

class MainRoom
  attr_accessor :doors, :type, :name, :door_names

  def initialize
    @name = "Main Hallway"
    @doors = { 1 => "", 2 => "", 3 => "", 4 => "", stairs: "", front: "Outside"}
    @door_names = { 1 => "Unknown", 2 => "Unknown", 3 => "Unknown", 4 => "Unknown", stairs: "Unknown", front: "Outside"}
    @type = "Empty"
  end
end

class UpstairsLanding
  attr_accessor :doors, :type, :name, :door_names

  def initialize
    @name = "Upstairs Landing"
    @doors = { 1 => "", 2 => "", 3 => "", 4 => "", stairs: ""}
    @door_names = { 1 => "Unknown", 2 => "Unknown", 3 => "Unknown", 4 => "Unknown", stairs: "Main Hallway"}
    @type = "Empty"
  end
end
