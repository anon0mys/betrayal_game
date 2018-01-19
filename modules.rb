
module Types

  def omen
    puts "Omen"
  end

  def event
    puts "Event"
  end

  def item
    puts "Item"
  end

  def empty
    puts "Empty"
  end

end

module Scripts

  def intro
    puts "You wake up. As your vision clears you find yourself in a dim hallway with several doors."
    puts "It looks like an old mansion. There are too many cobwebs for anyone to be living here."
    puts "A set of stairs leads to the next floor at the end of the hallway."
    puts "There are four doors leading out of the hallway...besides the front door"
    puts "All four doors look the same. Who knows what is behind each..."
    puts "I guess you could start a 'map' to keep track of which door leads where."
  end

  def game_script
    puts "It's no use just standing here. Pick a door to try."
    print "1, 2, 3, 4, or map > "
  end

  def invalid_choice
    puts "Panic all you want, it won't do you any good..."
  end

  def omen_1
    puts ""
    puts ""
  end

end
