require "test/unit"

require "adventure/room"

class TestAdventureRoom < Test::Unit::TestCase
  def test_create_room
    room = Room.new("Living Room",
                    "You are in the living room now.  You see two couches, one tv, and one wii.")
    
    assert_instance_of Room, room
    
    # Room must have a title
    assert_equal "Living Room", room.title
    
    # Room must have a description
    assert_equal "You are in the living room now.  You see two couches, one tv, and one wii.", room.description 
    
   end
end