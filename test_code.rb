$LOAD_PATH << '.'
require "/assets/rooms.rb"

test = RoomList.new

puts test.rooms[attic]
